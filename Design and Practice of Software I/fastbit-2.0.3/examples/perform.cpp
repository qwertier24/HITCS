#include <bits/stdc++.h>
#include <ibis.h>

class BitVector : public ibis::bitvector {
  /*
    This is an implementation of Upbit based on FastBit, an open-source data processing library.
   */
private:
  static const int G;

  class FencePointer {
  public:
    int compPos;
    int uncompPos;
    FencePointer(int _compPos, int _uncompPos) :
      compPos(_compPos),
      uncompPos(_uncompPos) {
    }
    bool operator<(const FencePointer &rhs) const {
      return uncompPos < rhs.uncompPos;
    }
  };
  std::vector<FencePointer> fp_vec;
  FencePointer findNearestPosition(const ibis::bitvector::word_t ind) {
    FencePointer tmp(0, ind);
    std::vector<FencePointer>::iterator p =  std::upper_bound(fp_vec.begin(), fp_vec.end(), tmp);
    --p;
    return *p;
  }
  std::vector<ibis::bitvector::word_t> decode(ibis::bitvector::word_t compWord) const {
    using ibis::array_t;
    //using ibis::bitvector64::word_t;
    std::vector<ibis::bitvector::word_t> uncompWords;
    if (compWord > ALLONES) { // consective 0s or 1s
      ibis::bitvector::word_t cnt = (compWord & MAXCNT);
      if (compWord>=HEADER1) {
        for (uint32_t j=0; j<cnt; j++)
          uncompWords.push_back(ALLONES);
      } else {
        for (uint32_t j=0; j<cnt; j++)
          uncompWords.push_back(0);
      }
    } else {
      uncompWords.push_back(compWord);
    }
    return uncompWords;
  }

public:
  int modify_times;             // how many times modifying, this is for Update Bitvector

  BitVector() : ibis::bitvector(), modify_times(0){
  }
  void XOR(const BitVector &rhs) {
    operator^=(rhs);
    maintain();
  }
  void appendBit(int bit) {
    active.append(bit);
    if (active.is_full()) {
        if (fp_vec.size() == 0 || nbits - fp_vec[fp_vec.size()-1].uncompPos >= G) {
          FencePointer tmp(m_vec.size(), nbits);
          fp_vec.push_back(tmp);
        }
        append_active();
    }
  }
  void maintain() {
    /*
      This method is programmed to  maintain the Fence Pointer
     */
    fp_vec.clear();
    word_t lst = 0;
    word_t cur_pos = 0;
    for (int i = 0; i < m_vec.size(); i++) {
      if (cur_pos == 0 || cur_pos - lst >= G) {
        fp_vec.push_back(FencePointer(i, cur_pos));
        lst = cur_pos;
      }
      if (m_vec[i] > ALLONES) {
        word_t len = m_vec[i] & MAXCNT;
        cur_pos += len;
      } else {
        cur_pos += MAXBITS;
      }
    }
  }

  void reset() {
    BitVector *tmp = new BitVector(*this);
    XOR(*tmp);
    maintain();
    delete tmp;
  }

  int getBit(const ibis::bitvector::word_t ind)  {
    if (ind >= size()) {
      return 0;
    } else if (ind >= nbits) {
      return ((active.val >> (active.nbits - (ind - nbits) - 1)) & 1U);
    } else {
      FencePointer fp = findNearestPosition(ind);
      while (fp.uncompPos <= ind) {
        if (m_vec[fp.compPos] > ALLONES) {
          word_t len = m_vec[fp.compPos] & MAXCNT;
          if (fp.uncompPos + len < ind) {
            fp.uncompPos += len;
            fp.compPos++;
          } else {
            if (m_vec[fp.compPos] >= HEADER1) {
              return 1;
            } else {
              return 0;
            }
          }
        } else {
          if (ind - fp.uncompPos < MAXBITS) {
            return (m_vec[fp.compPos] >> (SECONDBIT - (ind % MAXBITS))) & 1u;
          } else {
            fp.uncompPos += MAXBITS;
            fp.compPos++;
          }
        }
      }
    }
    return 0;
  }
  void flipBit(word_t ind) {
    int old_value = getBit(ind);
    setBit(ind, old_value^1);
    maintain();
  }
  void findAll1s() {
    decompress();
    for (int i = 0; i < m_vec.size(); i++) {
      for (int j = 30; j >= 0; j--)
        if ((m_vec[i]>>(30-j))&1) {
          printf("%d ", i*31+j);
        }
    }
    for (word_t i = 0; i < active.nbits; i++)
      if ((active.val>>(active.nbits-1-i)) & 1) {
        printf("%u ", nbits+i);
      }
    puts("");
  }
  void debug() {
    printf("m_vec.size(): %u\n", m_vec.size());
    printf("%u %u\n", active.nbits, active.val);
  }
};

int THRESHOLD, THREAD;
const int BitVector::G = 100;

int n_row, n_column; // number of rows/columns
BitVector *ub; // Update BitVectors
BitVector *vb; // Value BitVectors

void insert_row(int val) {
  for (int i = 0; i < n_column; i++)
    vb[i].appendBit(0);
  for (int i = 0; i < n_column; i++) {
    if (i == val)
      ub[i].appendBit(1);
    else
      ub[i].appendBit(0);
  }
  n_row++;
}

void find_in_bv(int row_id, int column_id, int &bit) {
  bit = ub[column_id].getBit(row_id) ^ vb[column_id].getBit(row_id);
}
int get_value(int row_id) {
  int *bits = new int[n_column];
  for (int i = 0; i < n_column; i++) {
    find_in_bv(row_id, i, bits[i]);
    if (bits[i] == 1)
      return i;
  }
  delete[] bits;
  return -1;
}
void delete_row(int row_id) {
  int old_value = get_value(row_id);
  if (old_value == -1) {
    //std::cerr << "Can't find the old value of row " << row_id << std::endl;
    return;
  }
  ub[old_value].flipBit(row_id);
  if (ub[old_value].modify_times >= THRESHOLD) {
    ub[old_value].modify_times = 0;
    vb[old_value].XOR(ub[old_value]);
    ub[old_value].reset();
  }
}
void update_row(int row_id, int new_value) {
  int old_value = get_value(row_id);
  if (old_value == -1) {
    //std::cerr << "Can't find the old value of row " << row_id << std::endl;
    return;
  }
  ub[old_value].flipBit(row_id);
  ub[new_value].flipBit(row_id);
  if (ub[old_value].modify_times >= THRESHOLD) {
    ub[old_value].modify_times = 0;
    vb[old_value].XOR(ub[old_value]);
    ub[old_value].reset();
  }
  if (ub[new_value].modify_times >= THRESHOLD) {
    ub[new_value].modify_times = 0;
    vb[new_value].XOR(ub[new_value]);
    ub[new_value].reset();
  }
}

void test_getbit() {
  ibis::bitvector *bv = new ibis::bitvector();
  for (int i = 0; i < 50; i++) {
    bv->operator+=(1);
  }
  exit(0);
}

int t1, t2;

class BIT_BV {
private:
  BitVector *ub; // Update BitVectors
  BitVector *vb; // Value BitVectors
  int n_row, n_column;
public:
  int lowbit(int x) {
    return x & (-x);
  }
  int get_value(int row_id) {
    int cur = 0;
    for (int i = log2(n_column); i>=0; i--) {
      if (ub[cur+(1<<i)].getBit(row_id) ^ vb[cur+(1<<i)].getBit(row_id)) {
        cur += 1<<i;
      }
    }
    return cur;
  }
  void modify(int col_id, int row_id) {
    col_id++;
    while (col_id <= n_column) {
      ub[col_id].flipBit(row_id);
      if (ub[col_id].modify_times >= THRESHOLD) {
        ub[col_id].modify_times = 0;
        vb[col_id].XOR(ub[col_id]);
        ub[col_id].reset();
      }
      col_id += lowbit(col_id);
    }
  }
  void update_row(int row_id, int val) {
    int old_value = get_value(row_id);
    modify(old_value, row_id);
    modify(val, row_id);
  }
  void query(int r) {
    r++;
    BitVector* res = NULL;
    while (r) {
      if (res == NULL) {
        res = new BitVector(ub[r]);
        res->XOR(vb[r]);
      } else {
        res->XOR(ub[r]);
        res->XOR(vb[r]);
      }
      r -= lowbit(r);
    }
    delete res;
  }
  BIT_BV(int n_row, int n_column) {
    this->n_row = n_row;
    this->n_column = n_column;
    ub = new BitVector[n_column+1];
    vb = new BitVector[n_column+1];
    for (int i = 1; i <= n_column; i++) {
      for (int j = 0; j < n_row; j++) {
        ub[i].appendBit(0);
        vb[i].appendBit(0);
      }
    }
  }
};

int main() {

  freopen("input.txt", "r", stdin);

  scanf("%d%d%d%d", &n_row, &n_column, &THRESHOLD, &THREAD);

  // test_getbit();

  /* initialization begins here */

  BIT_BV* bit = new BIT_BV(n_row, n_column);

  ub = new BitVector[n_column];
  vb = new BitVector[n_column];

  for (int i = 0; i < n_column; i++) {
    for (int j = 0; j < n_row; j++) {
      ub[i].appendBit(0);
    }
  }
  for (int i = 0; i < n_row; i++) {
    int currentValue;
    scanf("%d", &currentValue);
    for (int j = 0; j < n_column; j++) {
      if (j == currentValue) {
        vb[j].appendBit(1);
        bit->modify(j, i);
      } else {
        vb[j].appendBit(0);
      }
    }
  }
  /* initialization ends here */

  int queryCount;
  scanf("%d", &queryCount);
  int Q0 = queryCount;
  int sumUpdate1 = 0, sumUpdate2 = 0, sumGetValue1(0), sumGetValue2(0), sumRead1(0), sumRead2(0);
  int update_times = 0;
  FILE *fout = fopen("exp1.txt", "w");
  while (queryCount-- > 0) {
    char op[20];
    scanf("%s", op);
    //printf("%d\n", queryCount);
    if (strcmp(op, "QueryColumn") == 0) {
      int column_id;
      scanf("%d", &column_id);

      t1 = clock();
      BitVector *res = new BitVector(vb[column_id]);
      res->XOR(ub[column_id]);
      for (int i = 0; i < column_id; i++) {
        res->XOR(vb[i]);
        res->XOR(ub[i]);
      }
      //res->decompress();
      //res->findAll1s();
      delete res;
      t2 = clock();
      sumRead1 += t2 - t1;

      t1 = clock();
      bit->query(column_id);
      t2 = clock();
      sumRead2 += t2 -t1;
    } else if (strcmp(op, "QueryRow") == 0) {
      int row_id;
      scanf("%d", &row_id);

      t1 = clock();
      get_value(row_id);
      t2 = clock();
      sumGetValue1 += t2 - t1;

      t1 = clock();
      bit->get_value(row_id);
      t2 = clock();
      sumGetValue2 += t2 - t1;
    } else if (strcmp(op, "Modify") == 0) {
      int id_row, new_value;
      scanf("%d%d", &id_row, &new_value);

      t1 = clock();
      update_row(id_row, new_value);
      update_times++;
      t2 = clock();
      sumUpdate1 += t2 - t1;

      t1 = clock();
      bit->update_row(id_row, new_value);
      t2 = clock();
      sumUpdate2 += t2 - t1;
    } else if (strcmp(op, "Insert") == 0) {
      int value;
      scanf("%d", &value);
      int c1 = clock();
      insert_row(value);
      int c2 = clock();
    } else if (strcmp(op, "Delete") == 0) {
      int row_id;
      scanf("%d", &row_id);
      int c1 = clock();
      delete_row(row_id);
      int c2 = clock();
    }
  }

  using std::cout;
  using std::endl;
#define OUT(x) cout<<#x<<": " << x<<' '
  OUT(n_row);
  OUT(n_column);
  OUT(Q0);
  cout<<endl;
  OUT(sumUpdate1);
  OUT(sumUpdate2);
  cout<<endl;
  OUT(sumRead1);
  OUT(sumRead2);
  cout<<endl;
  OUT(sumGetValue1);
  OUT(sumGetValue2);

  // printf("sumUpdate:%d\nsumRead:%d\n", sumUpdate, sumRead);
  return 0;
}
