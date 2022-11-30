ex9 :: Integer -> [Integer] -> [[Integer]]

ex9 n list 
    | n < 1 = []
    | otherwise = list : ex9 (n-1) list

saida :: [[Integer]]
saida = ex9 5 [1,2,3]

main = print $ saida