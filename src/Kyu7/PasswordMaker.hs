module Kyu7.PasswordMaker where

makePassword :: String -> String
makePassword = map (encr . head) . words

encr :: Char -> Char
encr 'i' = '1'
encr 'I' = '1'
encr 'o' = '0'
encr 'O' = '0'
encr 's' = '5'
encr 'S' = '5'
encr a = a
