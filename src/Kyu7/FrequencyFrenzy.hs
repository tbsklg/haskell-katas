module Kyu7.FrequencyFrenzy where

import Data.List (sortOn)
import qualified Data.Map as M

frequency :: Ord a => [a] -> [(a, Int)]
frequency = sortOn fst . M.toList . foldl (\y x -> M.insertWith (+) x 1 y) M.empty

-- frequency = map (\t -> (head t, length t)) . group . sort
