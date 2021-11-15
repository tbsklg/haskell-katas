module Kyu7.PlanSeat (planeSeat) where

planeSeat :: String -> String
planeSeat s = case cluster . last $ s of
  Just cluster -> case section (read (init s) :: Int) of
    Just section -> section ++ "-" ++ cluster
    Nothing -> "No Seat!!"
  Nothing -> "No Seat!!"

cluster :: Char -> Maybe [Char]
cluster n
  | n `elem` ['A' .. 'C'] = Just "Left"
  | n `elem` ['D' .. 'F'] = Just "Middle"
  | n `elem` ['G', 'H', 'K'] = Just "Right"
  | otherwise = Nothing

section :: (Ord a, Num a) => a -> Maybe [Char]
section n
  | n <= 20 = Just "Front"
  | n <= 40 = Just "Middle"
  | n <= 60 = Just "Back"
  | otherwise = Nothing
