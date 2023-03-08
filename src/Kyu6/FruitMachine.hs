module Kyu6.FruitMachine where

import Data.List (group, sort, sortOn)
import qualified Data.Ord

fruit :: [[String]] -> [Int] -> Int
fruit [leftReel, middleReel, rightReel] [leftFinish, middleFinish, rightFinish] = score result
  where
    score [] = 0
    score [(item, 3)] = scoreOf item
    score [(item, 2), ("Wild", 1)] = (scoreOf item `div` 10) * 2
    score [(item, 2), _] = scoreOf item `div` 10
    score _ = 0

    result =
      sortOn (Data.Ord.Down . snd)
        . map (\x -> (head x, length x))
        . group
        . sort
        $ [leftResult, middleResult, rightResult]
    leftResult = leftReel !! leftFinish
    middleResult = middleReel !! middleFinish
    rightResult = rightReel !! rightFinish

    scoreOf "Wild" = 100
    scoreOf "Star" = 90
    scoreOf "Bell" = 80
    scoreOf "Shell" = 70
    scoreOf "Seven" = 60
    scoreOf "Cherry" = 50
    scoreOf "Bar" = 40
    scoreOf "King" = 30
    scoreOf "Queen" = 20
    scoreOf "Jack" = 10
    scoreOf _ = 0
fruit _ _ = 0
