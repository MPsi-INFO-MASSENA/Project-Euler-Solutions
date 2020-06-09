# -*- coding: utf-8 -*-


import random


def is_Prime(n, k = 8):
    
    if n%2 == 0:
        return False
    
    d = n-1
    s = 0
    while d%2 == 0:
        d>>=1
        s+=1
    assert ((2**s)*d == n-1)
     
    for _ in range(k):
        if miller_rabin_Test(n, d, s) == False:
            return False
    return True
        
def miller_rabin_Test(n, d, s):
    a = random.randrange(2,n-1)
    x = pow(a,d,n)
    
    if x == 1 or x == n-1:
        return True 
    
    for _ in range(s-1):
        x = pow(x,2,n)
        if x == 1:
            return False
        if x == n-1:
            return True
    
