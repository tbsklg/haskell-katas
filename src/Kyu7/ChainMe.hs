module Kyu7.ChainMe (chain) where

chain :: x -> [x -> x] -> x
chain = foldl (\c f -> f c)
