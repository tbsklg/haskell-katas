module Kyu6.Hand where

getParticipants :: Int -> Int
getParticipants 0 = 0
getParticipants handshakes = findMinParticipants 1
  where
    findMinParticipants n
      | n * (n - 1) `div` 2 >= handshakes = n
      | otherwise = findMinParticipants (n + 1)

