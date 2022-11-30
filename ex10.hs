map_ function [] = []
map_ function (x:xs) = (function x) : (map_ function xs) 

transpose:: [[Integer]] -> [[Integer]]

transpose ([]:_) = []
transpose x = (map_ head x) : transpose (map_ tail x)

saida :: [[Integer]]
saida = transpose [[1, 2, 3], [2, 2, 2], [3, 3, 3]]

main = print $ saida