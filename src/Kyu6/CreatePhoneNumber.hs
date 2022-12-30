module Kyu6.CreatePhoneNumber where

createPhoneNumber :: [Int] -> String
createPhoneNumber number = "(" ++ f ++ ")" ++ " " ++ s ++ "-" ++ t
    where
        f = concatMap show . take 3 $ number
        s = concatMap show . take 3 . drop 3 $ number
        t = concatMap show . drop 6 $ number
