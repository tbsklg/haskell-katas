module Kyu7.Building where

data Block = Block {width :: Integer, length' :: Integer, height :: Integer} deriving (Show)

block :: (Integer, Integer, Integer) -> Block
block (w, l, h) = Block {width = w, length' = l, height = h}

getWidth :: Block -> Integer
getWidth = width

getLength :: Block -> Integer
getLength = length'

getHeight :: Block -> Integer
getHeight = height

getVolume :: Block -> Integer
getVolume Block {width = w, length' = l, height = h} = w * l * h

getSurfaceArea :: Block -> Integer
getSurfaceArea Block {width = w, length' = l, height = h} = 2 * l * w + 2 * l * h + 2 * w * h
