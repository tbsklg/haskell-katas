module Kyu5.Parentheses where

validParentheses :: String -> Bool
validParentheses s = validate' s 0
  where
    validate' [] c = c == 0
    validate' (x : xs) c
      | c < 0 = False
      | x == '(' = validate' xs (c + 1)
      | otherwise = validate' xs (c - 1)

-- from AoC day 10
validParentheses' :: String -> Bool
validParentheses' l = validate' l []
  where
    validate' [] (_ : _) = False
    validate' [] [] = True
    validate' (x : xs) s
      | x == '(' = validate' xs (push ')' s)
      | otherwise = case pop s of
        Just a -> ')' == snd a && validate' xs (fst a)
        _ -> False

push :: Char -> [Char] -> [Char]
push c s = c : s

pop :: [Char] -> Maybe ([Char], Char)
pop s
  | null s = Nothing
  | otherwise = Just (tail s, head s)