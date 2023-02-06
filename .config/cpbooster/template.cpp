#include <ctime>
#pragma GCC optimize("Ofast")
#pragma GCC optimize("unroll-loops")
#include <bits/stdc++.h>

using namespace std;

#define take(v)                                                                \
	for (auto &it : v)                                                         \
		cin >> it;

#ifndef ONLINE_JUDGE
#define printv(v)                                                              \
	for (auto it : v)                                                          \
		cout << it << " ";                                                     \
	cout << endl;
#define watch(x) cout << (#x) << " is " << (x) << endl
#else
#define watch(x)
#define printv(v)
#endif

// DEBUG
#define sim template <class c
#define ris return *this
#define dor > debug &operator<<
#define eni(x)                                                                 \
	sim > typename enable_if<sizeof dud<c>(0) x 1, debug &>::type operator<<(  \
	          c i) {
sim > struct rge {
	c b, e;
};
sim > rge<c> range(c i, c j) { return rge<c>{i, j}; }
sim > auto dud(c *x) -> decltype(cout << *x, 0);
sim > char dud(...);
struct debug {
#ifndef ONLINE_JUDGE
	~debug() { cout << endl; }
	eni(!=) cout << boolalpha << i;
	ris;
} eni(==) ris << range(begin(i), end(i));
}
sim, class b dor(pair<b, c> d) {
	ris << "(" << d.first << ", " << d.second << ")";
}
sim dor(rge<c> d) {
	*this << "[";
	for (auto it = d.b; it != d.e; ++it)
		*this << ", " + 2 * (it == d.b) << *it;
	ris << "]";
}
#else
	sim dor(const c &) { ris; }
#endif
}
;
#define imie(...) " [" << #__VA_ARGS__ ": " << (__VA_ARGS__) << "] "
////

typedef long long ll;
typedef long double ld;
typedef vector<int> vi;
typedef pair<int, int> pi;

#define tests                                                                  \
	size_t t;                                                                  \
	cin >> t;                                                                  \
	while (t--)

#define rep(i, n) for (size_t i = 0; i < size_t(n); i++)
#define forne(i, a, b) for (size_t i = a; i <= size_t(b); i++)
#define forn(i, a, b) for (size_t i = a; i < size_t(b); i++)
#define all(x) x.begin(), x.end()
#define rall(x) x.rbegin(), x.rend()
#define sq(a) (a) * (a)

#define fi first
#define se second
#define pb push_back
#define mk make_pair

void solve() {}

int main() {
	cin.tie(0)->sync_with_stdio(0);
	cout.tie(0)->sync_with_stdio(0);

	solve();
	return 0;
}
