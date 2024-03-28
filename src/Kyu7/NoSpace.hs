module Kyu7.NoSpace (spacey) where

spacey :: [String] -> [String]
spacey = scanl1 (++)
