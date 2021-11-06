module Kyu7.PaddedNumbers where

solution :: Int -> String
solution n = "Value is " ++ padded n

padded :: Show a => a -> [Char]
padded n = replicate (5 - (length . show $ n)) '0' ++ show n

-- solution = printf "Value is %05d" 