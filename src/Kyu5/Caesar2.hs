module Kyu5.Caesar2 where

import Data.Char (chr, isAlpha, isLower, isUpper, ord, toLower)
import Data.List.Split (chunksOf)

type Message = String

type Prefix = String

type Places = Int

type Offset = Int

type Code = [String]

encodeStr :: Message -> Places -> Code
encodeStr m p = chunk' . (++) (prefix p m) . map (shiftUp p) $ m

decode :: Code -> Message
decode c = drop 2 . concatMap (map (shiftDown places)) . chunk' . concat $ c
  where
    places = rotate (take 2 . head $ c)

shiftUp :: Places -> Char -> Char
shiftUp p c
  | isUpper c && isAlpha c = chr . offsetUpper . (+) p . ord $ c
  | isLower c && isAlpha c = chr . offsetLower . (+) p . ord $ c
  | otherwise = c

shiftDown :: Places -> Char -> Char
shiftDown p c
  | isUpper c && isAlpha c = chr . offsetUpper . flip (-) p . ord $ c
  | isLower c && isAlpha c = chr . offsetLower . flip (-) p . ord $ c
  | otherwise = c

offsetLower :: Int -> Int
offsetLower = offsetAlpha 97

offsetUpper :: Int -> Int
offsetUpper = offsetAlpha 65

offsetAlpha :: Offset -> Int -> Int
offsetAlpha o code = (+) o . flip mod 26 . (-) code $ o

prefix :: Places -> Message -> Prefix
prefix p m = (toLower . head $ m) : [shiftUp p . toLower . head $ m]

rotate :: Prefix -> Places
rotate p = length . takeWhile (/= last p) . dropWhile (/= head p) . cycle $ ['a' .. 'z']

chunk' :: Message -> Code
chunk' message = chunksOf (ceiling . flip (/) 5 . fromIntegral . length $ message) message
