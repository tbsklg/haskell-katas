module Kyu7.ValidParentheses (validParentheses) where

validParentheses :: String -> Bool
validParentheses [] = True
validParentheses ('(': xs) = validate xs [')']
  where
    validate [] [] = True
    validate ('(': xs) stack = validate xs (')': stack)
    validate (')': xs) (')': st) = validate xs st
    validate _ _ = False
validParentheses _ = False
