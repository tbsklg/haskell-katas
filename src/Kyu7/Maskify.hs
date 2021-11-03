module Kyu7.Maskify where

maskify :: String -> String
maskify str = replicate (length str - 4) '#' ++ last4Elements str

last4Elements :: String -> String
last4Elements = reverse . take 4 . reverse
