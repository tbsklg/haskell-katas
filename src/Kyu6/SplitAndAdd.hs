module Kyu6.SplitAndAdd where

splitAndAdd :: [Int] -> Int -> [Int]
splitAndAdd [x] _ = [x]
splitAndAdd xs 0 = xs
splitAndAdd xs n = splitAndAdd (add . split $ xs) (n - 1)

split :: [Int] -> ([Int], [Int])
split xs =
  let m = length xs `div` 2
   in splitAt m xs

add :: ([Int], [Int]) -> [Int]
add (xs, ys) =
  let lxs = length xs
      lys = length ys

      rxs = reverse xs
      rys = reverse ys

      offset = if lxs > lys then drop lys rxs else drop lxs rys
   in (++) offset . reverse . zipWith (+) rxs $ rys
