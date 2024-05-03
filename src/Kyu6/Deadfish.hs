module Kyu6.Deadfish (parse) where

parse :: String -> [Int]
parse xs = go xs 0
  where
    go [] _ = []
    go (x : xs) n = case x of
      'i' -> go xs (n + 1)
      'd' -> go xs (n - 1)
      's' -> go xs (n * n)
      'o' -> n : go xs n
      _ -> go xs n
