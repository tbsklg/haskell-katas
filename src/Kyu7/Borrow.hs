module Kyu7.Borrow where

import Data.Char (isAlpha, toLower, isAscii)

borrow :: String -> String
borrow = map toLower . filter isAlpha . filter isAscii
