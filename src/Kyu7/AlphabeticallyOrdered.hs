module Kyu7.AlphabeticallyOrdered where 

import Data.List ( sort )

alphabetic :: String -> Bool
alphabetic xs = xs == sort xs
