import Distribution.Simple.Utils (xargs)

checkScore :: Double -> String
checkScore s
    | s <= 40 = "fail"
    | s <= 100 = "OK"
    | otherwise = "bag"


checkScore2 :: Double -> String
checkScore2 score
    | s <= 0.40 = "fail"
    | s <= 1.00 = "OK"
    | otherwise = "bag"
    where s = score/100


main :: IO()
main = print x
    where x = checkScore2 12

