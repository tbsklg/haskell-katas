module Kyu8.Quarter (quarterOf) where

quarterOf :: Int -> Int
quarterOf month = ceiling $ (fromIntegral month) / 3
