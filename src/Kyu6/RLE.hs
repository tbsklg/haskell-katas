module Kyu6.RLE where

import Data.List (group)

runLengthEncoding :: String -> [(Int, Char)]
runLengthEncoding xs = map (\x -> (length x, head x)) . group $ xs

-- runLengthEncoding = map (length &&& head) . group
