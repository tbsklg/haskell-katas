module Kyu6.Sumconsec where

import Data.List (group)

sumConsecutives :: [Int] -> [Int]
sumConsecutives = map sum . group 

