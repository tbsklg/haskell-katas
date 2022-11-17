module Kyu6.CatAndMouseHarder where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

catMouse :: String -> Int -> Either String String
catMouse xs i
  | cat `elem` xs && mouse `elem` xs && dog `elem` xs = tryToCatch
  | otherwise = Left "boring without all three"
  where
    tryToCatch
      | distanceBetweenCatAndMouse > i = Right "Escaped!"
      | distanceBetweenCatAndMouse <= i && isDogBetweenCatAndMouse = Right "Protected!"
      | otherwise = Right "Caught!"

    isDogBetweenCatAndMouse =
      dogPosition > minimum [catPosition, mousePosition]
        && dogPosition < maximum [catPosition, mousePosition]

    distanceBetweenCatAndMouse = abs (catPosition - mousePosition)

    catPosition = fromJust . elemIndex cat $ xs
    mousePosition = fromJust . elemIndex mouse $ xs
    dogPosition = fromJust . elemIndex dog $ xs

    cat = 'C'
    mouse = 'm'
    dog = 'D'

-- catMouse :: String -> Int -> Either String String
-- catMouse s j = maybe (Left "boring without all three") Right $ do
--     cat   <- elemIndex 'C' s
--     dog   <- elemIndex 'D' s
--     mouse <- elemIndex 'm' s

--     return $ go cat dog mouse
