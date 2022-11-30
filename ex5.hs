ex5 :: [Integer] -> Integer
ex5 (y:ys) = aux ys y
    where
        aux [] max = max
        aux (x:xs) max
            | x > max = aux xs x
            | otherwise = aux xs max


saida :: Integer
saida = ex5 [-10,2,1,4,5]

main = print $ saida