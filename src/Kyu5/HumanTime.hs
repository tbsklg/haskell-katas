module Kyu5.HumanTime where

import Text.Printf (printf)

humanReadable :: Int -> String
humanReadable x = printf "%02d:%02d:%02d" hh mm ss
    where
        hh = x `div` 3600
        mm = x `mod` 3600 `div` 60
        ss = x `mod` 60

-- humanReadable :: Int -> String
-- humanReadable x = printf "%02d:%02d:%02d" h m s
--   where (y, s) = x `divMod` 60
--         (h, m) = y `divMod` 60
