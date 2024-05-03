module Kyu6.Opstrings2 where

rot :: String -> String
rot = trimNewLine . unlines . reverse . map reverse . lines

selfieAndRot :: String -> String
selfieAndRot xs = trimNewLine $ unlines (print xs ++ printRot xs)
  where
    print = map (\x -> x ++ replicate (length x) '.') . lines
    printRot = map (\x -> replicate (length x) '.' ++ x) . lines . rot

trimNewLine :: String -> String
trimNewLine = reverse . dropWhile (== '\n') . reverse

oper :: (String -> String) -> String -> String
oper fct = fct
