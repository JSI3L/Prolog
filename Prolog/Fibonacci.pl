fibo(1,1).
fibo(2,1).

fibo(p,n) :-
    p > 3,
    p1 is p - 1,
    p2 is p - 2,
    fibo(p1 , n1),
    fibo(p2 , n2),
    n is n1 + n2.