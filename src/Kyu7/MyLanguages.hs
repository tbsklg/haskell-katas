module Kyu7.MyLanguages (Language, Score, myLanguages) where

import Data.Function (on)
import Data.List (sortBy)

type Language = String

type Score = Int

myLanguages :: [(Language, Score)] -> [Language]
myLanguages = map fst . takeWhile (\x -> snd x >= 60) . sortBy (flip compare `on` snd)
