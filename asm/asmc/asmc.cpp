// asmc.cpp: определяет точку входа для консольного приложения.
//
#include "stdafx.h"
#include <iostream>
#pragma comment(lib, "D:\\Proga\\Project\\FPI2018\\asm\\Debug\\asmA.lib")

extern "C" {int __stdcall getmin(void*, int); };
extern "C" {int __stdcall getmax(void*, int); };

int main()
{
	int arr[] = { 43,23,65,24,65,12,44,32,121,24 };
	getmax(arr, 10);
	getmin(arr, 10);
	system("pause");
    return 0;
}

