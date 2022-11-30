ex1 :: Integer -> [Integer] -> [Integer]
ex1 0 _ = []
ex1 _ [] = []
ex1 y (x:xs) = x : ex1 (y-1) xs

saida :: [Integer]
saida = ex1 2 [1,2,3,4]

main = print $ saida