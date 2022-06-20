module Kyu7.StrangePrincipal where

numOpenLockers :: Int -> Int
numOpenLockers = floor . sqrt . fromIntegral
