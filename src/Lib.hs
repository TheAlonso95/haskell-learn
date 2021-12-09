module Lib
  ( someFunc,
    doubleMe,
    doubleUs,
    doubleSmallNumber,
  )
where

someFunc :: IO ()
someFunc = putStrLn "hello world"

doubleMe :: Num a => a -> a
doubleMe x = x + x

doubleUs :: Num a => a -> a -> a
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: (Ord a, Num a) => a -> a
doubleSmallNumber x =
  if x > 100
    then x
    else doubleMe x
    
-- elem is a function that returns true if the element exist on the list
-- in this case it checks if each Char of a char list is in UpperCase | 
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A' .. 'Z']]


removeOddNumbers :: Integral a => [[a]] -> [[a]]
removeOddNumbers t = [ [ x | x <- l, even x ] | l <- t ]

-- Tuples are lists of a defined length and it's represented like the following 
-- [(1,2), (3,4), (5,6)] |

-- c is the hypotenuse and a & b are the Catheters.
-- This function generates a tuple of 3 that is a right triangle where it's perimeter is 24  |
triangles' :: [(Integer, Integer, Integer)]
triangles' = [ (a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a ^ 2 + b ^2 == c ^ 2, a+b+c == 24]