#include <cstdio>  
#include <iostream>  
#include <cstring>  
#include <algorithm>  
using namespace std;  
const int N = 105;  
int Map[N];  
int dp[N][65][65];  //dp[i][j][k]表示放第i行时，第i-1行为第j个状态，第i-2行为第k个状态最多可以放多少个炮兵  
  
int s[N], num[N];  
int n, m, p;  
  
bool check(int x) {  //判断本行的炮兵是否互相攻击  
    if(x & (x >> 1)) return false;  
    if(x & (x >> 2)) return false;  
    return true;  
}  
  
int Count(int x) {  //计算状态为x时可以放多少个炮兵  
    int i = 1, ans = 0;  
    while(i <= x) {  
        if(x & i) ans++;  
        i <<= 1;  
    }  
    return ans;  
}  
  
void Init() {  
    p = 0;  
    memset(s, 0, sizeof(s));  
    memset(num, 0, sizeof(num));  
    for(int i = 0; i < (1 << m); i++) { //预处理出合法状态  
        if(check(i)) {  
            s[p] = i;  
            num[p++] = Count(i);  
        }  
    }  
}  
  
int main() {  
    char ch;  
    int T;  
    freopen("in.txt","r",stdin);
    scanf("%d", &T);  
    while(T--) {  
        scanf("%d%d", &n, &m);  
        if(!n && !m) {  
            printf("0\n");  
            continue;  
        }  
        memset(dp, 0, sizeof(dp));  
        memset(Map, 0, sizeof(Map));  
        for(int i = 0; i < n; i++) {  
            for(int j = 0; j < m; j++) {  
                cin >> ch;  
                if(ch == 'H')  
                    Map[i] = Map[i] | (1 << (m - 1 - j));  //P为0，H为1  
            }  
        }  
        Init();  
//        printf("p = %d\n", p);  
//        for(int i = 0; i < p; i++) {  
//            printf("s[%d] = %d, num[%d] = %d\n", i, s[i], i, num[i]);  
//        }  
        for(int i = 0; i < p; i++) { //求第一行最多放多少  
            if(!(Map[0] & s[i]))  
                dp[0][i][0] = num[i];  
        }  
        for(int i = 0; i < p; i++) {  //前两行最多放多少  
            if(!(Map[1] & s[i])) {  
                for(int j = 0; j < p; j++) {  
                    if((!(s[i] & s[j]))) {  
                        dp[1][i][j] = max(dp[1][i][j], dp[0][j][0] + num[i]);  
                    }  
                }  
            }  
        }  
        for(int r = 2; r < n; r++) {  //枚举行数  
            for(int i = 0; i < p; i++) {  //当前行的状态  
                if(!(s[i] & Map[r])) {  
                    for(int j = 0; j < p; j++) {  //上一行的状态  
                        if(!(s[j] & Map[r-1])) {  
                            if(!(s[i] & s[j])) {  
                                for(int k = 0; k < p; k++) {  //上上一行的状态  
                                    if(!(s[k] & Map[r-2])) {  
                                        if(!(s[j] & s[k])) {  
                                            if(!(s[i] & s[k])) {  
                                                dp[r][i][j] = max(dp[r][i][j], dp[r-1][j][k] + num[i]);  
                                            }  
                                        }  
                                    }  
                                }  
                            }  
                        }  
                    }  
                }  
            }  
        }  
        int ans = 0;  
        for(int i = 0; i < p; i++) {  
            for(int j = 0; j < p; j++) {  
                if(ans < dp[n-1][i][j])  
                    ans = dp[n-1][i][j];  
            }  
        }  
        printf("%d\n", ans);  
    }  
    return 0;  
}  
