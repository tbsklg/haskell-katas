module Kyu2.SimpleSQLEngine.Parser () where

import Kyu2.SimpleSQLEngine.Tokenizer (Token (..))


parse :: [Token] -> String
parse = 