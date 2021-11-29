module Kyu7.WomansAge where
    
import Text.Printf (printf)

womensAge :: Int -> String
womensAge i = printf "%d? That's just %d, in base %d!" i (20 + (i `mod` 2)) (i `div` 2) 
