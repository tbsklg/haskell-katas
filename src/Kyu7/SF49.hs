module Kyu7.SF49 where

import Data.Char (chr)

decipher :: String -> String
decipher "" = ""
decipher [_] = ""
decipher ('9' : '7' : xs) = "a" ++ decipher xs
decipher ('9' : '8' : xs) = "b" ++ decipher xs
decipher ('9' : '9' : xs) = "c" ++ decipher xs
decipher l = (chr . read . take 3 $ l) : decipher (drop 3 l)
