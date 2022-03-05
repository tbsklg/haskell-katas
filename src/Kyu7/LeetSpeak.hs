module Kyu7.LeetSpeak where

toLeetSpeak :: String -> String
toLeetSpeak = map toLeet

toLeet :: Char -> Char
toLeet 'A' = '@'
toLeet 'B' = '8'
toLeet 'C' = '('
toLeet 'D' = 'D'
toLeet 'E' = '3'
toLeet 'F' = 'F'
toLeet 'G' = '6'
toLeet 'H' = '#'
toLeet 'I' = '!'
toLeet 'J' = 'J'
toLeet 'K' = 'K'
toLeet 'L' = '1'
toLeet 'M' = 'M'
toLeet 'N' = 'N'
toLeet 'O' = '0'
toLeet 'P' = 'P'
toLeet 'Q' = 'Q'
toLeet 'R' = 'R'
toLeet 'S' = '$'
toLeet 'T' = '7'
toLeet 'U' = 'U'
toLeet 'V' = 'V'
toLeet 'W' = 'W'
toLeet 'X' = 'X'
toLeet 'Y' = 'Y'
toLeet 'Z' = '2'
toLeet x = x
