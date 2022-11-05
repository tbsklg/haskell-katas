module Kyu7.DuckShoot where

duckShoot :: Int -> Float -> String -> String
duckShoot ammo aim ducks = go ducks strikes
  where
    go [] _ = []
    go xs 0 = xs
    go (x : xs) s
      | x == '2' = 'X' : go xs (s - 1)
      | otherwise = x : go xs s

    strikes = floor (fromIntegral ammo * aim)
