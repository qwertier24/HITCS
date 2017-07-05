#include <iostream>
#include <sstream>
#include <iomanip>
#include <vector>
#include <deque>
#include <list>
#include <set>
#include <map>
#include <stack>
#include <queue>
#include <bitset>
#include <string>
#include <numeric>
#include <algorithm>
#include <functional>
#include <iterator>
#include <cstdio>
#include <cstring>
#include <cmath>
#include <cstdlib>
#include <cctype>
#include <complex>
#include <ctime>
#define INF 0x3f3f3f3f
#define eps 1e-6
#define p(x) printf("%d\n", x)
#define k(x) printf("Case %d: ", ++x)
#define mes(x, d) memset(x, d, sizeof(x))
#define s(x) scanf("%d", &x)

/*
int gcd(int a,int b)
{
    return ! b ? a : gcd(b,a % b);
}


struct data
{
    int val;
    int pos;
    int ranks;
}p[2005];

bool cmp1(const data &a,const data &b)
{
    if(a.val == b.val)
        return a.pos < b.pos;
    return a.val < b.val;
}
bool cmp2(const data &a,const data &b)
{
    return a.val > b.val;
}
bool cmp3(const data &a,const data &b)
{
    return a.pos < b.pos;
}
*/


typedef long long LL;

const double pi = acos(-1.0);
const long long mod = 1e9 + 7;


using namespace std;

char s[105];

int main()
{
    freopen("in.txt","r",stdin);
    //freopen("out.txt","w",stdout);
    int T;
    scanf("%d",&T);
    while(T--)
    {
        scanf("%s",s);
        int len = strlen(s);
        for(int i = 1,j;i <= len;i++)
        {
            if(len % i == 0)
            {
                for(j = i;j < len;j++)
                    if(s[j] != s[j % i])
                        break;
                if(j == len)
                {
                    printf("%d\n",i);
                    break;
                }
            }
        }
        if(T)
            puts("");
    }
    return 0;
}
