lista1(['manzana', 'platano', 'guayaba']).


own_member(X, [X|_]).        
own_member(X, [_|T]) :-      
    own_member(X, T).

own_member().