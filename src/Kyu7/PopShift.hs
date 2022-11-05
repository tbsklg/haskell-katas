module Kyu7.PopShift where

popShift :: String -> (String, String, Maybe Char)
popShift xs
  | even . length $ xs = (x, y, Nothing)
  | (==) 1 . length $ xs = ([head xs], y, Nothing)
  | otherwise = (x, y, Just z)
  where
    x = take s . reverse $ xs
    y = take s xs
    z = (!! max 0 s) xs

    s = floor $ (fromIntegral . length $ xs) / 2
