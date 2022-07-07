
replicateMe :: Int -> a -> [a]
replicateMe n x
    | n <= 0 = []
    | otherwise = x : replicateMe (n-1) x   -- :で'replicateMe (n-1) x'にxを入れる
testReplicate = print x
    where x = replicateMe 3 5


takeMe n _
    | n <= 0 = []
takeMe _ [] = []
takeMe n (x:xs) = x : takeMe (n-1) xs

testTake = print x
    where x = takeMe 3 [1, 10, 9, 2, 8, 4]


reverseMe :: [a] -> [a]
reverseMe [] = []
reverseMe (x:xs) = reverseMe xs ++ [x]


mapMe _ [] = []
mapMe f (x:xs) = f x : mapMe f xs

filterMe _ [] = []
filterMe p (x:xs)
    | p x = x : filter  p xs
    | otherwise = filter p xs



testMap = print x
    where x = mapMe sqrt [1,2,3,4]

testFilter = print  x
    where x = map (\x -> x * 100) (filter (<3) (mapMe sqrt [1,2,3,4,5,6,7,8,9,10,11,12]))


main = testFilter


