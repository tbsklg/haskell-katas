module Kyu5.Baker where

type Ingredient = String
type Amount = Int
type Recipe = [(Ingredient, Amount)]
type Storage = [(Ingredient, Amount)]

cakes :: Recipe -> Storage -> Int
cakes recipe storage =
  foldr
    ( \ingredient acc ->
        min acc (numberOf (fst ingredient))
    )
    maxBound
    recipe
 where
  numberOf ingredient = case lookup ingredient storage of
    Nothing -> 0
    Just storageAmount -> case lookup ingredient recipe of
      Nothing -> 0
      Just recipeAmount -> storageAmount `div` recipeAmount
