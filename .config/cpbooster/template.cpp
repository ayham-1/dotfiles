#include <ctime>
#pragma GCC optimize("Ofast")
#pragma GCC optimize("unroll-loops")
#include <bits/stdc++.h>

#define all(x) x.begin(), x.end()
#define watch(x) cout << (#x) << " is " << (x) << endl
#define rall(x) x.rbegin(), x.rend()
#define take(v)                                                                \
	for (auto &it : v)                                                         \
		cin >> it;
#define printv(v)                                                              \
	for (auto it : v)                                                          \
		cout << it;                                                            \
	cout << endl;

using namespace std;
using ll = long long;
using ld = long double;

double startTime;
double getCurrentTime() {
	return ((double)clock() - startTime) / CLOCKS_PER_SEC;
}

void solve() {}

int main() {
	startTime = (double)clock();
	cin.tie(0)->sync_with_stdio(0);
	cout.tie(0)->sync_with_stdio(0);

	int t;
	cin >> t;
	while (t--)
		solve();
	return 0;
}
