ex11 :: String -> [(String, String)] -> [String]

ex11 v [] = []
ex11 v ((v1, v2):resto)
    | v1 == v = v2 : ex11 v resto
    | v2 == v = v1 : ex11 v resto
    | otherwise = ex11 v resto

saida :: [String]
saida = ex11 "a" [("a", "b"),("a", "c"),("a", "d"),("b", "e"),("c", "f"),("d", "e"),("e", "f"),("c", "f")]

main = print $ saida