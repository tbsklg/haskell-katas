module Kyu6.Phone where

import Text.Parsec

validPhoneNumber :: String -> Bool
validPhoneNumber = either (const False) (const True) . parse phoneNumber ""
 where
  phoneNumber = do
    char '('
    count 3 digit
    char ')'
    space
    count 3 digit
    char '-'
    count 4 digit
    eof
