#include<stdio.h>
#include<string.h>
int a[1001];
long long dp[2][30001];/*状态为选了第i个能凑成j的方案数,这样设计状态能保证转移的时候能保证i-1,和i都用了！*/
int main(){
  freopen("in.txt","r",stdin);
    int n,i,j,sum;
    long long ans=0;
    const int mod=1000000007;
    sum=0;
    memset(dp,0,sizeof(dp));
    scanf("%d",&n);
    for(i=0;i<n;i++){
        scanf("%d",&a[i]);
        sum+=a[i];
    }
    for(i=0;i<n;i++){
        /*-sum...sum;0...2*sum;sum....3sum*/
        for(j=0;j<=sum*2;j++){
          dp[i%2][j]=(j+a[i]<=sum*2?dp[(i+1)%2][j+a[i]]:0)+(j-a[i]>=0?dp[(i+1)%2][j-a[i]]:0)%mod;
        }
        /*如果前i-1个什么也不选，加上自己凑成a[i]和-a[i]的情况,如果不加的话，
        对现在凑成0没影响，对i+1从i转移的时候有影响！！可能只选了i*/
        dp[i%2][sum+a[i]]++;
        dp[i%2][sum-a[i]]++;
        ans=(ans+dp[i%2][sum])%mod;
    }
    printf("%I64d\n",ans);
    return 0;
}
