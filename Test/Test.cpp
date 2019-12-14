#include "HiTest.h"
#include <iostream>

void Test1()
{
	std::cout << "Test1" << std::endl;
}

int Test2(int a,int b)
{
	std::cout << "Test2" << a << b << std::endl;
	return 0;
}

class B
{
public:
	void operator()(int a){ std::cout<<"operator(int a)"<< a <<std::endl;}
	void operator()(){ std::cout<<"operator()"<<std::endl;}
	void operator()() const { std::cout<<"const operator()"<<std::endl;}
	void test() { std::cout << "B:test()" << std::endl; }
};


void CaseGenerator()
{
	HITest::addTestCase([] {std::cout << "lambda" << std::endl; });
	HITest::addTestCase(Test1);
	int a = 10;
	HITest::addTestCase(Test2,a,23);
	B b;
	const B b1;
	HITest::addTestCase(&B::test, &b);
	HITest::addTestCase(b);
	HITest::addTestCase(b,1);
	HITest::addTestCase(b1);
}

HITestMain(CaseGenerator);
