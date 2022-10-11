module Kyu6.Mirror where

import Data.List (intercalate)
import Data.List.Split (splitOn)

mirror :: String -> String
mirror xs = intercalate "\n" [border, mirrowedWords, border]
    where
        maximumLength = maximum . map length . splitOn " "  $ xs
        border = replicate (maximumLength + 4) '*'
        mirrowedWords = intercalate "\n"
            . map (
                addBorders
                . padEnd
                . reverse
            )
            . splitOn " "  $ xs
        
        addBorders x = "* " ++ x ++ " *"
        padEnd x = x ++ replicate (maximumLength - length x) ' '
