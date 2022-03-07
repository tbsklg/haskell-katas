module Kyu7.CreditCardIssuer where

import Data.List (isPrefixOf)

getIssuer :: Int -> String
getIssuer = insitute . show
  where
    insitute n
      | beginsWith ["4"] n && (length n == 13 || length n == 16) = "VISA"
      | beginsWith ["51", "52", "53", "54", "55"] n && length n == 16 = "Mastercard"
      | beginsWith ["6011"] n && length n == 16 = "Discover"
      | beginsWith ["34", "37"] n && length n == 15 = "AMEX"
      | otherwise = "Unknown"

beginsWith :: [[Char]] -> String -> Bool
beginsWith c s = foldl (\y x -> y || x `isPrefixOf` s) False c
