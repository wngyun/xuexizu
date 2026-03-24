#include<iostream>
using namespace std;
int main()
{
	/*int* ptr;
	ptr = new int(100);
	*ptr = 10;
	cout << *ptr << endl;
	delete ptr;*/

	/*new进行分配检查
	int* p;
	p = new int;
	if (!p)
	{
		cout << "allocation failure\n";
		return 1;
	}
	*p = 20;
	cout << *p;
	delete p;
	return 0;*/
	
	/*int i;
	int& j = i;
	i = 30; 
	cout << "i=" << i << "j=" <<j<< "\n";
	j = 80;
	cout << "i=" << i << "j=" <<j<< "\n";
	cout << "i的地址"<< & i<<"\n";
	cout << "j的地址" << &j<<"\n";
	return 0;*/

	/*int i = 15;
	int *iptr = &i;
	int& rptr = i;
	cout << "i is " << i << endl;
	cout << "*iptr is " << *iptr << endl;
	cout << "retr is " <<rptr<< endl;
	rptr = 100;
	cout << "After changing i is " << i << endl;
	cout << "*iptr is " << *iptr << endl;
	cout << "retr is " <<rptr<< endl;
	return 0;*/

	/*int j = 5;
	int &i = j;
	i = 123;

	int *p = &i;
		cout << &p << "\n" << &i<<"\n" << &j << endl;
		return 0;*/

	
}