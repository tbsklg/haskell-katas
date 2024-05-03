module Kyu6.MiniStringFuck where

import Data.Char (chr)

myFirstInterpreter :: String -> String
myFirstInterpreter code = interpret code 0
  where
    interpret [] _ = []
    interpret xs 256 = interpret xs 0
    interpret ('+' : xs) i = interpret xs (i + 1)
    interpret ('.' : xs) i = chr i : interpret xs i
    interpret _ _ = error "invalid character"
