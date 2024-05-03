module Kyu6.FollowThatSpy (findRoutes) where

import Data.List (intercalate, (\\))

findRoutes :: [(String, String)] -> String
findRoutes routes = intercalate ", " . reverse . findRoutes' d . flip $ routes
  where
    findRoutes' :: String -> [(String, String)] -> [String]
    findRoutes' _ [] = []
    findRoutes' d routes = case lookup d routes of
      Nothing -> [d]
      Just d' -> d : findRoutes' d' routes

    flip :: [(a, b)] -> [(b, a)]
    flip = map (\(a, b) -> (b, a))

    fs :: [String]
    fs = map fst routes

    ts :: [String]
    ts = map snd routes

    d :: String
    [d] = ts \\ fs
