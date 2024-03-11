module Kyu5.Baker where

import Data.Maybe (fromMaybe)

type Ingredient = String
type Amount = Int
type Recipe = [(Ingredient, Amount)]
type Storage = [(Ingredient, Amount)]

cakes :: Recipe -> Storage -> Int
cakes recipe storage =
  foldr
    ( \ingredient acc ->
        min acc $ fromMaybe 0 (numberOf $ fst ingredient)
    )
    maxBound
    recipe
 where
  numberOf ingredient = do
    storageAmount <- lookup ingredient storage
    recipeAmount <- lookup ingredient recipe
    pure $ storageAmount `div` recipeAmount
