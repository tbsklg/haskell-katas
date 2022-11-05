module Kyu7.SumPbg where

data Player = Player {team :: String, ppg :: Double} deriving (Show)

sumPpg :: Player -> Player -> Double
sumPpg player1 player2 = ppg player1 + ppg player2

-- sumPpg Player{ppg = a} Player{ppg = b} = a + b
-- sumPpg = (+) `on` ppg
