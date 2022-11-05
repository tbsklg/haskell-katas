module Kyu7.Add (add) where

add :: Int -> Int -> Int
add i j
  | length iAsString > length jAsString = performMath iAsString (replicate (length iAsString - length jAsString) '0' ++ jAsString)
  | (length . show $ j) > (length . show $ i) = performMath (replicate (length jAsString - length iAsString) '0' ++ show i) jAsString
  | otherwise = performMath (show i) . show $ j
  where
    iAsString = show i
    jAsString = show j

performMath :: [Char] -> [Char] -> Int
performMath i j = read (concatMap (show . uncurry (+)) . zipWith (\x y -> (read [x] :: Int, read [y] :: Int)) i $ j) :: Int
