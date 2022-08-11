module Kyu2.SimpleSQLEngine.Parser () where

import Kyu2.SimpleSQLEngine.Tokenizer (Token (..))

data AST = AST {ast_type :: string, variant :: string, statement :: [Statement]} deriving (Show, Eq)

data Statement = SelectStatement | FromStatement

data SelectStatement = SelectStatement {ast_type :: string, variant :: string}

data FromStatement = FromStatement {ast_type :: string, variant :: string}

parse :: [Token] -> AST
parse = undefined
