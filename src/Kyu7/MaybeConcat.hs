module Kyu7.MaybeConcat (concatMaybe) where

concatMaybe :: Maybe String -> Maybe String -> Maybe String
concatMaybe (Just x) (Just y) = Just . unwords $ [x, y]
concatMaybe _ _ = Nothing
