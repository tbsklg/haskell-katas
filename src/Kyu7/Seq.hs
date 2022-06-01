module Kyu7.Seq where

import Data.Char (toLower, toUpper)
import Data.List (elemIndex, intercalate, sort)
import Data.Maybe (fromJust)

alphaSeq :: String -> String
alphaSeq = intercalate "," . map seq . sort . map toLower
  where
    seq x = (:) (toUpper x) . replicate (pos x) $ x
    pos x = fromJust . elemIndex x $ alphabet

alphabet :: [Char]
alphabet = "abcdefghijklmnopqrstuvwxyz"
