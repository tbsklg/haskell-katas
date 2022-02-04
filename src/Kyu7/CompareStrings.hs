module Kyu7.CompareStrings where

import Data.Maybe (fromMaybe)
import Data.Char (toUpper, ord, isAlpha)

-- compare function is part of Prelude => compare' is used instead
compare' :: Maybe String -> Maybe String -> Bool
compare' s1 s2 = isEmptyS1 || isEmptyS2 || asciiS1 == asciiS2
    where
        asciiS1 = sum . map (ord . toUpper) $ s1'
        asciiS2 = sum . map (ord . toUpper) $ s2'

        isEmptyS1 = s1' == "" || hasSpecialS1 
        isEmptyS2 = s2' == "" || hasSpecialS2

        hasSpecialS1 = (<) 0 . length . filter (not . isAlpha ) $ s1'
        hasSpecialS2 = (<) 0 . length . filter (not . isAlpha ) $ s2'

        s1' = fromMaybe "" s1
        s2' = fromMaybe "" s2