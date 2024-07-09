module Kyu5.IpsBetween where

import Data.List.Split (splitOn)

type Ipv4 = String

ipsBetween :: Ipv4 -> Ipv4 -> Int
ipsBetween from to = to32Bit to - to32Bit from

to32Bit :: Ipv4 -> Int
to32Bit ip = foldl (\acc x -> acc * 256 + x) 0 $ map read $ splitOn "." ip
