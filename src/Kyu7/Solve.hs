module Kyu7.Solve (solve) where

import Data.Char (toLower)
import Data.List (intercalate, nub)
import qualified Data.Map as M
import Data.Maybe (fromJust)

solve :: String -> String
solve xs = intercalate "," . map result . nub $ transformed
  where
    result x = [x] ++ ":" ++ asterisks x
    asterisks x = replicate (fromJust . M.lookup (toLower x) $ counts) '*'
    counts = foldl (\y x -> M.insertWith (+) (toLower x) 1 y) M.empty transformed
    transformed = map toLower . filter (/= ' ') $ xs
