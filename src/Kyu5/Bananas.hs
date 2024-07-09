module Kyu5.Bananas (bananas) where

banana = "banana"

bananas :: String -> [String]
bananas [] = []
bananas xs = go xs banana
  where
    go xs [] = ['-' <$ xs]
    go [] _ = []
    go (x : xs) (b : bs) =
      [x : rest | x == b, rest <- go xs bs]
        ++ ['-' : rest | rest <- go xs (b : bs)]
