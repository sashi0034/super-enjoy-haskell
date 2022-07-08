
module Shapes
(
    Point(..),
    Shape(..),
    area,
) where

data Point = Point Float Float deriving (Show)

data Shape = 
    Circle Point Float | 
    Rect Point Point
    deriving (Show)


area (Circle _ r) = pi * r ^ 2
area (Rect (Point x1 y1) (Point x2 y2)) = abs (x2 - x1) * abs (y2 - y1)


mapMe _ [] = []
mapMe f (x:xs) = f x : mapMe f xs

test1 = print a
    where 
        a = [x, y]
        cir = Circle (Point 10 20) 10
        x = area $ cir
        y = area $ Rect (Point 10 20) (Point 100 100)
        


test2 = print list
    where 
        list = map (Circle $ Point 10 10) [1, 2, 3]



