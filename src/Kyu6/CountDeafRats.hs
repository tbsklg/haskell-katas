module Kyu6.CountDeafRats where

countDeafRats :: String -> Int
countDeafRats = countRats . span (/= 'P') . filter (/= ' ')
  where
    countRats (left, right) = countLeftRunning left + countRightRunning right

    countLeftRunning [] = 0
    countLeftRunning ('O' : '~' : xs) = 1 + countLeftRunning xs
    countLeftRunning ('~' : 'O' : xs) = countLeftRunning xs
    countLeftRunning (_ : xs) = countLeftRunning xs

    countRightRunning [] = 0
    countRightRunning ('~' : 'O' : xs) = 1 + countRightRunning xs
    countRightRunning ('O' : '~' : xs) = countRightRunning xs
    countRightRunning (_ : xs) = countRightRunning xs
