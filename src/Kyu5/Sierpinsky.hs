module Kyu5.Sierpinsky where

import Data.List

type Iteration = Int

type FractalWithNewLine = String

type Fractal = [String]

fractalLetter = "L"

sierpinsky :: (Integral a) => a -> FractalWithNewLine
sierpinsky = intercalate "\n" . go
  where
    go 0 = [fractalLetter]
    go n = go (n - 1) ++ project (go (n - 1)) (2 ^ n - 1)

project :: Fractal -> Iteration -> Fractal
project [] _ = []
project (l : ls) n = shift l n : project ls (n - 2)
  where
    shift :: String -> Int -> String
    shift l n = l ++ space n ++ l

space x = concat . replicate x $ " "
