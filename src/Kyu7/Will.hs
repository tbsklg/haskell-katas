module Kyu7.Will where

willYou :: Bool -> Bool -> Bool -> Bool
willYou True True True = False
willYou False False False = False
willYou False True False = False
willYou True False False = False
willYou _ _ _ = True
