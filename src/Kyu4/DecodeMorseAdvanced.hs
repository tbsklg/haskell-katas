module Kyu4.DecodeMorseAdvanced where

import Data.List (group)
import Data.List.Split (splitOn)
import Data.Map as M (fromList, (!))
import Data.Text (dropAround, pack, unpack)

morseCodes = M.fromList [("-", "T"), ("--", "M"), ("---", "O"), ("-----", "0"), ("----.", "9"), ("---..", "8"), ("---...", ":"), ("--.", "G"), ("--.-", "Q"), ("--..", "Z"), ("--..--", ","), ("--...", "7"), ("-.", "N"), ("-.-", "K"), ("-.--", "Y"), ("-.--.", "("), ("-.--.-", ")"), ("-.-.", "C"), ("-.-.--", "!"), ("-.-.-.", ";"), ("-..", "D"), ("-..-", "X"), ("-..-.", "/"), ("-...", "B"), ("-...-", "="), ("-....", "6"), ("-....-", "-"), (".", "E"), (".-", "A"), (".--", "W"), (".---", "J"), (".----", "1"), (".----.", "'"), (".--.", "P"), (".--.-.", "@"), (".-.", "R"), (".-.-.", "+"), (".-.-.-", "."), (".-..", "L"), (".-..-.", "\""), (".-...", "&"), ("..", "I"), ("..-", "U"), ("..---", "2"), ("..--.-", "_"), ("..--..", "?"), ("..-.", "F"), ("...", "S"), ("...-", "V"), ("...--", "3"), ("...---...", "SOS"), ("...-..-", "$"), ("....", "H"), ("....-", "4"), (".....", "5")]

decodeMorse :: String -> String
decodeMorse = unwords . map decode . words'
  where
    words' = splitOn "  "
    decode = concatMap decoded . words
    decoded x = morseCodes M.! x

decodeBits :: String -> String
decodeBits bits = decode (trimZeros bits) (transmissionRate bits)
  where
    decode "" _ = ""
    decode rBits@('1' : _) rate = (dotOrDash rate . takeWhile (== '1') $ rBits) ++ decode (dropWhile (== '1') rBits) rate
    decode rBits@('0' : _) rate = (pause rate . takeWhile (== '0') $ rBits) ++ decode (dropWhile (== '0') rBits) rate
    decode _ _ = error "Invalid message"

    dotOrDash rate signal
      | length signal == rate = "."
      | length signal == 3 * rate = "-"
      | otherwise = error "Invalid signal"

    pause rate signal
      | length signal == rate = ""
      | length signal == 3 * rate = " "
      | length signal == 7 * rate = "   "
      | otherwise = error "Invalid signal"

transmissionRate :: String -> Int
transmissionRate = minimum . map length . group . trimZeros

trimZeros :: String -> String
trimZeros = unpack . dropAround (== '0') . pack
