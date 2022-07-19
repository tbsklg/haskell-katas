module Kyu7.Alphabet where

import Data.Char (toUpper)
import Data.Maybe (mapMaybe)

letters :: [(Char, String)]
letters =
  [ ('A', "Alpha"),
    ('B', "Bravo"),
    ('C', "Charlie"),
    ('D', "Delta"),
    ('E', "Echo"),
    ('F', "Foxtrot"),
    ('G', "Golf"),
    ('H', "Hotel"),
    ('I', "India"),
    ('J', "Juliett"),
    ('K', "Kilo"),
    ('L', "Lima"),
    ('M', "Mike"),
    ('N', "November"),
    ('O', "Oscar"),
    ('P', "Papa"),
    ('Q', "Quebec"),
    ('R', "Romeo"),
    ('S', "Sierra"),
    ('T', "Tango"),
    ('U', "Uniform"),
    ('V', "Victor"),
    ('W', "Whiskey"),
    ('X', "X-ray"),
    ('Y', "Yankee"),
    ('Z', "Zulu")
  ]

nato :: String -> String
nato = unwords . mapMaybe (\x -> lookup (toUpper x) letters)
