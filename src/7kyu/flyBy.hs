module DroneFlyBy.Kata (flyBy) where

flyBy :: String -> String -> String
flyBy l [] = l
flyBy (_:xs) (_:ys) = 'o' : flyBy xs ys


-- flyBy :: String -> String -> String
-- flyBy lamps drone = take (length lamps) $ map (const 'o') drone ++ lamps
