
1. **member(Element, List)**
    
    - Verifica si un elemento está presente en una lista.
    
    ``` Prolog
    ?- member(a, [a, b, c]).
    ```
    
2. **length(List, Length)**
    
    - Calcula la longitud de una lista.
    
    ```Prolog
    ?- length([a, b, c], Length).
    ```
    
3. **append(List1, List2, Result)**
    
    - Concatena dos listas.
    
    ```Prolog
    ?- append([a, b], [c, d], Result).
    ```
    
4. **reverse(List, ReversedList)**
    
    - Invierte una lista.
    
    ```Prolog
    ?- reverse([a, b, c], Reversed).
    ```
    
5. **select(Element, List, Rest)**
    
    - Elimina un elemento de una lista, devolviendo la lista restante.
    
    ```Prolog
    ?- select(b, [a, b, c], Rest).
    ```
    
6. **nth0(Index, List, Element)**
    
    - Obtiene el n-ésimo elemento de una lista, comenzando desde 0.
    
    ```Prolog
    ?- nth0(1, [a, b, c], Element).
    ```
    
7. **nth1(Index, List, Element)**
    
    - Obtiene el n-ésimo elemento de una lista, comenzando desde 1.
    
    ```Prolog
    ?- nth1(2, [a, b, c], Element).
    ```
    
8. **last(List, LastElement)**
    
    - Obtiene el último elemento de una lista.
    
    ```Prolog
    ?- last([a, b, c], Last).
    ```
    
9. **sort(List, SortedList)**
    
    - Ordena una lista.
    
    ```Prolog
    ?- sort([3, 1, 2], Sorted).
    ```
    
10. **permutation(List, Permutation)**
    
    - Genera permutaciones de una lista.
    
    ```Prolog
    ?- permutation([a, b, c], Permuted).
    ```