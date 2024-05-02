module Kyu5.ReverseInParens (reverseInParens) where

reverseInParens :: String -> String
reverseInParens [] = []
reverseInParens xs | '(' `notElem` xs = xs
reverseInParens w@(x : xs)
  | null capture = x : reverseInParens xs
  | otherwise = r : reverseInParens (rs ++ further)
  where
    (capture, further) = captureBetween w
    (r : rs) = reverse' capture

reverse' = map flipParen . reverse

flipParen ')' = '('
flipParen '(' = ')'
flipParen x = x

captureBetween :: String -> (String, String)
captureBetween ('(' : xs) = (capture, further)
  where
    (capture, further) = go ("(", xs) 1

    go (cs, fs) 0 = (cs, fs)
    go (cs, '(' : fs) l = go (cs ++ "(", fs) (l + 1)
    go (cs, ')' : fs) l = go (cs ++ ")", fs) (l - 1)
    go (cs, f : fs) l = go (cs ++ [f], fs) l
captureBetween xs = ("", xs)
