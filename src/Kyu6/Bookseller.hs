module Kyu6.Bookseller where

import qualified Data.Map as M
import Data.Maybe (fromMaybe)

data Stock = Stock String Int deriving (Show, Eq)

stocklist :: [Stock] -> [Char] -> [(Char, Int)]
stocklist st cs = sumQuantity . M.fromListWith (+) . map(\(Stock (category:_) count)-> (category, count)) $ st
    where
        sumQuantity categoryCounts = map (\x -> (x, fromMaybe 0 (M.lookup x categoryCounts))) $ cs
