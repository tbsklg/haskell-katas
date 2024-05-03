module Kyu6.ClockyMcClockFace (whatTimeIsIt) where

whatTimeIsIt :: Float -> String
whatTimeIsIt angle = display h' ++ ":" ++ display m'
  where
    h = floor $ angle / 30
    m = floor $ (angle - fromIntegral h * 30) * 2

    h' = if h == 0 then 12 else h
    m' = if m == 0 then 0 else m

    display x
      | x < 10 = "0" ++ show x
      | otherwise = show x
