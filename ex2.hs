ex2 :: Integer -> [Integer] -> [Integer]
ex2 0 xs = xs
ex2 _ [] = []
ex2 y (x:xs) = ex2 (y-1) xs

saida :: [Integer]
saida = ex2 2 [1,2,3,4,5]

main = print $ saida