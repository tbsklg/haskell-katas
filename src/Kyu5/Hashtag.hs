module Kyu5.Hashtag where

import Data.Char ( isSpace, toUpper )

generateHashtag :: String -> Maybe String
generateHashtag xs = case validate xs of
  Left _ -> Nothing
  Right xs -> Just . hashify $ xs

hashify :: String -> String
hashify = (:) '#' . concatMap capitalize . words

capitalize :: String -> String
capitalize (x:xs) = toUpper x : xs

validate :: String -> Either String String
validate xs | null xs || all isSpace xs || length xs > 139 = Left "Invalid string"
validate xs = Right xs
