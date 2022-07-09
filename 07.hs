import Control.Monad (when)


data Point = Point{x :: Int, y :: Int, depth :: Float} deriving (Show)


makeDepth oldP = newP
    where
        newP = Point{x=x oldP, y=y oldP, depth=newDepth}
        newDepth = oldX / oldY
        oldX = fromIntegral (x oldP) :: Float
        oldY = fromIntegral (y oldP) :: Float


main = print x
    where x = makeDepth Point{x=20, y=45, depth=0.0}

