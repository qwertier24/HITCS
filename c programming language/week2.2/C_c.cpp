#include <stdio.h>
#include <string.h>
 
const int N = 65;
typedef long long LL;
 
int n, start[N], end[N];
LL mi[N], ans, t;
 
void init() {
    mi[0] = 0;
    for (int i = 1; i <= 60; i ++)
        mi[i] = mi[i - 1] * 2 + 1;
}
 
LL solve(int i, int pos) {
    if (i == 0)
        return 0;
    if (pos == start[i]) 
        return solve(i - 1, pos);
    else
        return solve(i - 1, 6 - pos - start[i]) + 1 + mi[i - 1];
}
 
int main() {
  freopen("in.txt","r",stdin);
    init();
    int cas = 0;
    while (~scanf("%d", &n) && n) {
        ans = 0; int i;
        for (i = 1; i <= n; i ++)
            scanf("%d", &start[i]);
        for (i = 1; i <= n; i ++)
            scanf("%d", &end[i]);
        for (i = n; i >= 1; i --) {
            if (end[i] != start[i]) {
                ans = solve(i - 1, 6 - start[i] - end[i]) + 1;
                t = 6 - start[i] - end[i];
                break;
            }
        }
        for (int j = i - 1; j >= 1; j --) {
            if (end[j] == t) continue;
            ans += mi[j - 1] + 1;
            t = 6 - t - end[j];
        }
        printf("Case %d: %lld\n", ++cas, ans);
    }
    return 0;
}
