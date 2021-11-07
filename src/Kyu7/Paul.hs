module Kyu7.Paul where

paul :: [String] -> String
paul s
  | misery < 40 = "Super happy!"
  | misery < 70 = "Happy!"
  | misery < 100 = "Sad!"
  | otherwise = "Miserable!"
  where
    misery = sum . map score $ s

score :: Num p => [Char] -> p
score "life" = 0
score "eating" = 1
score "kata" = 5
score "Petes kata" = 10
score _ = 0
