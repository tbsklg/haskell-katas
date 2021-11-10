module Kyu7.Hat where

data Color = WHITE | BLACK deriving (Show,Eq,Enum,Bounded)
data Player = P1 | P2 | P3 | P4 deriving (Show,Eq)

guessHatColor :: (Color,Color,Color,Color) -> Player
guessHatColor (WHITE,BLACK,WHITE,BLACK) = P2
guessHatColor (WHITE,BLACK,BLACK,WHITE) = P1
guessHatColor _ = P1
