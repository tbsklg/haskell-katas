module Kyu5.Pagination where

type Collection a = [a]

type ItemsPerPage = Int

itemCount :: Collection a -> Int
itemCount = length

pageCount :: Collection a -> ItemsPerPage -> Int
pageCount xs n = ceiling . (/) (fromIntegral . itemCount $ xs) $ fromIntegral n

pageItemCount :: Collection a -> ItemsPerPage -> Int -> Maybe Int
pageItemCount [] _ _ = Nothing
pageItemCount xs n page
  | page < 0 = Nothing
  | page >= pageCount xs n = Nothing
  | otherwise = Just . minimum $ [itemCount xs - n * page, n]

pageIndex :: Collection a -> ItemsPerPage -> Int -> Maybe Int
pageIndex [] _ _ = Nothing
pageIndex xs n item
  | item < 0 = Just 0
  | item >= itemCount xs = Nothing
  | otherwise = Just . div item $ n
