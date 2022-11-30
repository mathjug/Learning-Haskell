ex6 :: [Integer] -> Integer
ex6 (y:ys) = aux ys 2 y 1
    where
        aux [] i max i_max = i_max
        aux (x:xs) i max i_max
            | x > max = aux xs (i+1) x i
            | otherwise = aux xs (i+1) max i_max


saida :: Integer
saida = ex6 [10,2,15,4,5]

main = print $ saida