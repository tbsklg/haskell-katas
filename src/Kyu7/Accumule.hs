module Kyu7.Accumule where

import Data.Char (toUpper, toLower)
import Data.List (intercalate)

accum :: [Char] -> [Char]
accum s = intercalate "-" (map (\x -> toUpper (head x) : map toLower (tail x)) (zipWith (flip replicate) s [1 .. ]))
