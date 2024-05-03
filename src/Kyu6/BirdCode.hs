module Kyu6.BirdCode where

import Data.Char (toUpper)
import Data.List.Split (splitOneOf)

birdCode :: [String] -> [String]
birdCode = map (toUpperCase . createCode . splitOneOf "- ")
  where
    toUpperCase = map toUpper

    createCode [x] = take 4 x
    createCode [x, y] = take 2 x ++ take 2 y
    createCode [x, y, z] = [head x] ++ [head y] ++ take 2 z
    createCode bird@[_, _, _, _] = map head bird
    createCode _ = error "Could not create four letter birding code"
