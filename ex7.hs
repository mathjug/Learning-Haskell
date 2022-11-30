ex7 :: [Integer] -> [Integer] -> [(Integer, Integer)]

ex7 (x:xs) (y:ys) = 
                    if xs == [] then [(x,y)]
                    else [(x,y)] ++ ex7 xs ys

saida :: [(Integer, Integer)]
saida = ex7 [10,2,15,4,5] [3, -4, 1, 7, 100]

main = print $ saida