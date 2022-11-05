module Kyu7.BirthdayII where

import Data.Char (chr, ord)
import Data.List (sort)
import Text.Printf (printf)

data Present = Goodpresent | Crap | Empty | Bang | Badpresent | Dog deriving (Eq, Show, Enum)

type Message = String

type NumPasses = Int

present :: Present -> NumPasses -> Message
present p n
  | p == Goodpresent = map (chr . (+) n . ord) "goodpresent"
  | p == Crap || p == Empty = sort "crap"
  | p == Bang = show . foldl (\x y -> (ord y - n) + x) 0 $ "bang"
  | p == Dog = printf "pass out from excitement %s times" . show $ n
  | otherwise = "Take this back!"
