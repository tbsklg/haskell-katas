module Kyu6.MessageValidator (isAValidMessage) where

import Data.Char (isDigit, isAlpha)

isAValidMessage :: [Char] -> Bool
isAValidMessage [] = True
isAValidMessage message@(x:_)
  | null message' || isAlpha x || numberOfChars > length message' = False
  | otherwise = all isAlpha (take numberOfChars message') && isAValidMessage (drop numberOfChars message') 
  where
    numberOfChars = read . takeWhile isDigit $ message
    message' = dropWhile isDigit $ message

