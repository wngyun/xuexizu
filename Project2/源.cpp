#include<iostream>
using namespace std;
class A {
private:
	int p, q;
	void fun(int o) {
		cout << o;
	}
public:
	void fun1(int s) {
		p = s;
	}
	void fun2(int d) {
			q = d;
	
	}
	void y() {
		cout << p << q;
	}
};
int main()
{
	A a;
	int e, r, t;
	cin >> e >> r >> t;
	a.fun1(e);
	a.fun2(r);
	/*cin >> a.p >> a.q ;*/
	/*cout << a.p << "\n" << a.q;*/
	a.y();
	return 0;
}