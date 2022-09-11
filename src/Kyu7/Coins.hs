module Kyu7.Coins where

adjust :: Int -> Int -> Int
adjust coin price = head [x | x <- [price ..], price <= x, x `mod` coin == 0]
