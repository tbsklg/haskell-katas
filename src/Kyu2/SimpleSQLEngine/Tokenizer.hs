module Kyu2.SimpleSQLEngine.Tokenizer (tokenize, Token (..), Type (..)) where

import Data.Char (isAlpha, isSeparator, isSpace, toLower)

data Token = Token {sqlType :: Type, value :: String} deriving (Show, Eq)

data Type = SELECT | FROM | JOIN | WHERE | ON | IDENTIFIER | COMPARISON | EOF deriving (Show, Eq)

lookAhead :: [Token] -> Maybe Token
lookAhead [] = Nothing
lookAhead (x : _) = Just x

tokenize :: String -> [Token]
tokenize [] = []
tokenize l@(x : xs)
  | isSpace x = tokenize xs
  | otherwise = token parse : tokenize toParse
  where
    parse = map toLower . takeWhile (\x -> (not . isSeparator $ x) && x /= ',') $ l
    toParse = dropWhile (not . isSeparator) l

token :: String -> Token
token x = case lookup x tokens of
  Just t -> t
  _ -> (Token {sqlType = IDENTIFIER, value = x})

tokens :: [(String, Token)]
tokens =
  [ ("select", (Token {sqlType = SELECT, value = "select"})),
    ("from", (Token {sqlType = FROM, value = "from"})),
    ("join", (Token {sqlType = JOIN, value = "join"})),
    ("where", (Token {sqlType = WHERE, value = "where"})),
    ("on", (Token {sqlType = ON, value = "on"})),
    ("=", (Token {sqlType = COMPARISON, value = "="})),
    (">", (Token {sqlType = COMPARISON, value = ">"})),
    ("<", (Token {sqlType = COMPARISON, value = "<"})),
    ("<=", (Token {sqlType = COMPARISON, value = "<="})),
    (">=", (Token {sqlType = COMPARISON, value = ">="})),
    ("<>", (Token {sqlType = COMPARISON, value = "<>"}))
  ]
