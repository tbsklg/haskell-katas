module Kyu7.Fruits where

import Data.Char (toLower)
import Data.Text (pack, replace, unpack)

removeRotten :: [String] -> [String]
removeRotten = map ((map toLower . unpack) . (replace (pack "rotten") (pack "") . pack))

-- removeRotten :: [String] -> [String]
-- removeRotten = map clean

-- clean ('r':'o':'t':'t':'e':'n':x:xs) = toLower x : xs
-- clean xs = xs
