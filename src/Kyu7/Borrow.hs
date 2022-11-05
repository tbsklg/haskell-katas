module Kyu7.Borrow where

import Data.Char (isAlpha, isAscii, toLower)

borrow :: String -> String
borrow = map toLower . filter isAlpha . filter isAscii
