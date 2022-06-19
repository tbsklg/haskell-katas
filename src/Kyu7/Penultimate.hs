module Kyu7.Penultimate where

penultimate :: [a] -> a
penultimate = last . init
 