module Kyu7.PersonTypeStringRepresentation where

import Text.Printf (printf)

data Person = Person String String

instance Show Person where
  show (Person firstName lastName) = printf "%s %s" firstName lastName
