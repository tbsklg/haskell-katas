module Kyu7.NaughtyNice where

type Warrior = (String, Bool)

getNiceNames :: [Warrior] -> [String]
getNiceNames = map fst . filter snd

getNaughtyNames :: [Warrior] -> [String]
getNaughtyNames = map fst . filter (not . snd)
