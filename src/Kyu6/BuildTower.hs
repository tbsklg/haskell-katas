module Kyu6.BuildTower where

buildTower :: Int -> [String]
buildTower i = build 1
  where
    build n
      | n > i = []
      | otherwise = ((replicate (i - n) ' ') ++ (replicate (2 * n - 1) '*') ++ (replicate (i - n) ' ')) : build (n + 1)

