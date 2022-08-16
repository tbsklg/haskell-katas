module Kyu7.SharesPrice where

import Text.Printf (printf)

sharePrice :: Double -> [Double] -> String
sharePrice invested = printf "%.2f" . foldl (\y x -> y + (y * x / 100)) invested
