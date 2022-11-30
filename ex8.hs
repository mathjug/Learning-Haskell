ex8 :: [(Integer, Integer)] -> ([Integer], [Integer])

ex8 list = aux list ([],[])
    where
        aux ((x,y):rest) (xs,ys) =
            if rest == [] then (xs++[x],ys++[y])
            else aux rest (xs++[x], ys++[y])

saida :: ([Integer], [Integer])
saida = ex8 [(1, 8),(2, 4)]

main = print $ saida