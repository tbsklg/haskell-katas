module Kyu7.DNA (dnaStrand, Base(..)) where

data Base = A | T | G | C deriving (Show, Eq)
type DNA = [Base]

dnaStrand :: DNA -> DNA
dnaStrand = map complement

complement :: Base -> Base
complement A = T
complement T = A
complement G = C
complement C = G
