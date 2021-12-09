module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn boringFunction 10

boringFunction n = succ n