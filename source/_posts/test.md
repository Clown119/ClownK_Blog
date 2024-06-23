---
title: test
mathjax: false
date: 2024-06-23 16:24:23
tags: test
---

# Test

```c
#include <stdio.h>

int main()
{
    int a,b,c;
    char s[101];
    // get a integer
    scanf("%d", &a);
    // get two integers separated half-width break
    scanf("%d %d",&b,&c);
    // get a string
    scanf("%s",s);
    // output
    printf("%d %s\n",a+b+c,s);
    return 0;
}
```
