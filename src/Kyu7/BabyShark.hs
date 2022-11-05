module Kyu7.BabyShark (babySharkLyrics) where

import Data.List

babySharkLyrics = unlines . (++) (concatMap c ["Baby shark", "Mommy shark", "Daddy shark", "Grandma shark", "Grandpa shark", "Let's go hunt"]) $ ["Run away,…"]

a = unwords . replicate 6 $ "doo"

b x = x ++ ", " ++ a

s s = s ++ " shark"

c x = replicate 3 (b x) ++ [x ++ "!"]
