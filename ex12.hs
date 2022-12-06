mem x [] = False
mem x (y:ys) = if x == y then True else mem x ys

newmem x xs = if mem x xs then xs else x:xs

union [] ys = ys
union (x:xs) ys = union xs (newmem x ys)

subset [] ys = True
subset (x:xs) ys = if mem x ys == False then False else subset xs ys

saida1 = union [-1, 4, 2, 5, 7] [3, 6, 0, 2, 7, 8]
saida2 = subset [1, 2, 3] [5, 6, 1, 4, 3, 7, 2]
saida3 = subset [1, 9] [5, 6, 1, 4, 3, 7, 2]

main = 
    do
        print $ saida1
        print $ saida2
        print $ saida3