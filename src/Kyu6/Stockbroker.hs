module Kyu6.Stockbroker where

import Data.Either (isRight)
import Data.List (intercalate, partition)
import Data.List.Split (splitOn)
import Text.Parsec
  ( Parsec,
    alphaNum,
    char,
    digit,
    letter,
    many,
    many1,
    parse,
    (<|>),
  )

data Status = Buy | Sell deriving (Show, Eq)

data Order = Order
  { quantity :: Int,
    price :: Float,
    status :: Status
  }
  deriving (Show)

balanceStatements :: String -> String
balanceStatements s =
  let (orders, errors) = parseOrder s
   in if null errors
        then unwords [buySummary orders, sellSummary orders]
        else unwords [buySummary orders, sellSummary orders] ++ "; " ++ errorSummary errors ++ " ;"

errorSummary :: [String] -> String
errorSummary errors = "Badly formed " ++ show (length errors) ++ ": " ++ intercalate " ;" errors

buySummary :: [Order] -> String
buySummary orders =
  let buys = filter (\o -> status o == Buy) orders
   in "Buy: " ++ show (sum $ map (\o -> round $ fromIntegral (quantity o) * price o) buys)

sellSummary :: [Order] -> String
sellSummary orders =
  let sells = filter (\o -> status o == Sell) orders
   in "Sell: " ++ show (sum $ map (\o -> round $ fromIntegral (quantity o) * price o) sells)

parseOrder :: String -> ([Order], [String])
parseOrder "" = ([], [])
parseOrder xs = go . splitOn ", " $ xs
  where
    go :: [String] -> ([Order], [String])
    go [] = ([], [])
    go (x : xs) = case toOrder x of
      Nothing -> let (orders, errors) = go xs in (orders, x : errors)
      Just order -> let (orders, errors) = go xs in (order : orders, errors)

toOrder :: String -> Maybe Order
toOrder xs = case parse orderParser "" xs of
  Left _ -> Nothing
  Right order -> Just order

orderParser :: Parsec String () Order
orderParser = do
  many1 alphaNum
  char '.' <|> char ' '
  many letter
  many $ char ' '
  q <- many1 digit
  char ' '
  p <- many1 digit
  char '.'
  d <- many1 digit
  char ' '
  s <- char 'B' <|> char 'S'
  pure $ Order (read q) (read $ p ++ "." ++ d) (if s == 'B' then Buy else Sell)
