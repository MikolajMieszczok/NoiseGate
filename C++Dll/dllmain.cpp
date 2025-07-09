// dllmain.cpp : Defines the entry point for the DLL application.
#include "pch.h"
#include "cfun.h"
#include <vector>
extern "C" void ngfun(std::vector<float>& x, float y, int z, int c)
{
	for (int i = z; i < c; i++)
	{
		if (x[i] > 0)
		{
			if (y > x[i])
			{
				x[i] = 0;
			}
		}
		if (x[i] < 0)
		{
			if (y > ( - 1 * x[i]))
			{
				x[i] = 0;
			}
		}
		
	}
}