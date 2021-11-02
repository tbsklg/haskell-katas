module Kyu7.Filter where

import Data.Char (ord)

filterString :: String -> Int
filterString s = read (filter (\x -> ord x > 47 && ord x < 58) s) :: Int
