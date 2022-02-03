module Kyu7.Explode where

explode :: String -> String
explode = foldr (\x -> (++) (replicate (read [x] :: Int) x)) []
