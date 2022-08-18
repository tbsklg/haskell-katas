module Kyu7.Plant2 where

plantDoubling :: Int -> Int
plantDoubling 0 = 0
plantDoubling x
  | null plants = 1
  | otherwise = (+) 1 . plantDoubling . (x -) . last $ plants
  where
    plants = takeWhile (<= x) . iterate (* 2) $ 1

-- popCount
