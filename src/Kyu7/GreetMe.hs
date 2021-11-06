module Kyu7.GreetMe where

import Data.Char (toUpper, toLower)

greet :: String -> String
greet name = "Hello " ++ capitalize name ++ "!" 

capitalize :: [Char] -> [Char]
capitalize name =  toUpper (head name) : map toLower (tail name)
