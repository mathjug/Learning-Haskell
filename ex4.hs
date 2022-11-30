ex4 :: [Integer] -> Integer
ex4 y = aux y 1
    where
        aux [] acc = acc
        aux (x:xs) acc = aux xs (x * acc)


saida :: Integer
saida = ex4 [10,2,1,4,5]

main = print $ saida