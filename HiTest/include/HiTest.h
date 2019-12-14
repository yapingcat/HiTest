#pragma once

#include<functional>
#include <type_traits>
#include <thread>
#include <vector>

class HiTest
{
public:
	
public:
	HiTest() {};
	~HiTest() {};

public:

	template<class F, class ...Arges,
		class = typename std::enable_if<!std::is_member_function_pointer<F>::value>::type>
		void registerTestCase(F && f, Arges && ...args)
	{
		auto it = [=]() mutable { return f(args...); };
		cases_.push_back(it);
	}

	template<class R,class C,class... DAres,class P, class... Args>
		void registerTestCase(R(C::*f)(DAres...) const,P && p, Args&& ...args)
	{
		auto it = [&, f] { return (*p.*f)(args ...); };
		cases_.push_back(it);
	}

	template<class R,class C, class... DArgs, class P, class... Args>
	void registerTestCase(R(C::*f)(DArgs...), P && p, Args && ... args)
	{
		auto it = [&, f] { return (*p.*f)(std::forward<Args>(args) ...); };
		cases_.push_back(it);
	}

	void run()
	{
		for (auto &it : cases_)
		{
			it();
		}
	}

	void reset()
	{
		cases_.clear();
	}

	static HiTest& defaultHiTest()
	{
		static HiTest sht;
		return sht;
	}

private:
	
	std::vector<std::function<void()>> cases_;
};

namespace HITest {

	template<class F, class ...Arges,
		class = typename std::enable_if<!std::is_member_function_pointer<F>::value>::type>
		void addTestCase(F && f, Arges && ...args)
	{
		HiTest::defaultHiTest().registerTestCase(std::forward<F>(f), std::forward<Arges>(args) ...);
	}

	template<class R, class C, class... DAres, class P, class... Args>
	void addTestCase(R(C::*f)(DAres...) const, P && p, Args&& ...args)
	{
		HiTest::defaultHiTest().registerTestCase(std::forward<R(C::*)(DAres...) const>(f), std::forward<P>(p), std::forward<Args>(args)...);
	}

	template<class R, class C, class... DArgs, class P, class... Args>
	void addTestCase(R(C::*f)(DArgs...), P && p, Args && ... args)
	{
		HiTest::defaultHiTest().registerTestCase(std::forward<R(C::*)(DArgs...)>(f), std::forward<P>(p), std::forward<Args>(args)...);
	}

	void reset()
	{
		HiTest::defaultHiTest().reset();
	}
}


#define HITestMain(CaseGenerator)		 \
	int main(int argc,char*argv[])		 \
	{									 \
		CaseGenerator();                 \
		HiTest::defaultHiTest().run();	 \
	}			



