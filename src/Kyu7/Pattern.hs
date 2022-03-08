module Kyu7.Pattern where

import Data.List (intercalate)

pattern :: Int -> String
pattern n = intercalate "\n" . map l $ [n, (n - 1) .. 1]
    where
        l x = concatMap show . take x $ [n, (n-1) .. 1]