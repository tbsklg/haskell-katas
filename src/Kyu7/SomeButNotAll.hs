module Kyu7.SomeButNotAll (someButNotAll) where

someButNotAll :: (a -> Bool) -> [a] -> Bool
someButNotAll f xs = any f xs && not (all f xs)
