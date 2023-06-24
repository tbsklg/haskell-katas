module Kyu6.SalesmanTravel where

import Text.Parsec
import qualified Data.Map as M
import Data.List (intercalate)
import Debug.Trace

data Address = Address {
  street :: String,
  houseNumber :: String,
  zipCode :: String,
  state :: String } deriving (Show)

travel :: String -> String -> String
travel r zipcode = case M.lookup zipcode . addressBook $ r of
  Nothing -> error "Address not found"
  Just a -> zipcode ++ ":" ++ streets ++ "/" ++ houseNumbers
    where
      houseNumbers = intercalate "," . map houseNumber $ a
      streets = intercalate "," . map street $ a

addressBook :: String -> M.Map String [Address]
addressBook raw = case parse parseAddresses "" raw of
  Left _ -> error "Invalid addresses"
  Right addresses -> foldr (\x acc -> M.insertWith (++) (state x ++ " " ++ zipCode x) [x] acc) M.empty addresses

parseAddresses :: Parsec String () [Address]
parseAddresses = do
  addresses <- sepBy parseAddress (char ',')
  return addresses 

parseAddress :: Parsec String () Address
parseAddress = do
  houseNumber <- many1 digit
  char ' '
  street <- manyTill anyChar (try (lookAhead ((count 2 upper))))
  state <- many1 upper
  space
  zipCode <- many1 digit <|> string ""
  return Address {street = init street, houseNumber = houseNumber, zipCode = zipCode, state = state} 
