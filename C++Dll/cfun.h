#pragma once
#include <vector>
#ifdef CFUN_EXPORTS
#define CFUN_API __declspec(dllexport)
#else
#define CFUN_API __declspec(dllimport)
#endif
extern "C" CFUN_API void ngfun(std::vector<float>& x, float y, int z, int c);