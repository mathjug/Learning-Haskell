ex3 :: Integer -> [Integer] -> [Integer]
ex3 _ [] = []
ex3 y (x:xs) = if x > y then x : (ex3 y xs) else (ex3 y xs)

saida :: [Integer]
saida = ex3 2 [10,2,1,4,5]

main = print $ saida