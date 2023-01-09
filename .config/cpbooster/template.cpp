#ifndef LOCAL
#pragma GCC optimize("Ofast")
#pragma GCC optimize("unroll-loops")
#endif
#include <bits/stdc++.h>

using namespace std;

template <class T> void print(const vector<T> &v) {
	for (size_t i = 0; i < v.size() - 1; i++)
		cout << v[i] << " ";
	cout << v[v.size() - 1] << endl;
}

using ll = long long;

void solve() {}

int main() {
	cin.tie(0)->sync_with_stdio(0);

	int t;
	cin >> t;
	while (t--)
		solve();
	return 0;
}
