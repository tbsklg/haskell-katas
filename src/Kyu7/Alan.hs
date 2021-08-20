module Kyu7.Alan where

import Data.List ( (\\) )

alan :: [String] -> String
alan s
    | null delta = "Smell my cheese you mother!"
    | otherwise = "No, seriously, run. You will miss it."
    where
        delta = stations \\ s

stations :: [String]
stations = ["Rejection", "Disappointment", "Backstabbing Central", "Shattered Dreams Parkway"]
