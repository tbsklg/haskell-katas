module Kyu7.KeypadHorror (computerToPhone) where

computerToPhone :: String -> String
computerToPhone = map toPhone

toPhone :: Char -> Char
toPhone '1' = '7'
toPhone '2' = '8'
toPhone '3' = '9'
toPhone '7' = '1'
toPhone '8' = '2'
toPhone '9' = '3'
toPhone x = x
