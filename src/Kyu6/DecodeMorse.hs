module Kyu6.DecodeMorse (decodeMorse) where

import Data.Map.Strict ((!))
import Data.List.Split (splitOn)
import Data.Char (isSpace)

import qualified Data.Map as M

decodeMorse :: String -> String
decodeMorse = trim . unwords . map decode . words'
  where
    words' xs = splitOn "   " xs
    decode = concatMap decoded . words
    decoded x = morseCodes ! x
    
    trim = f . f
      where f = reverse . dropWhile isSpace

morseCodes = M.fromList [("-","T"),("--","M"),("---","O"),("-----","0"),("----.","9"),("---..","8"),("---...",":"),("--.","G"),("--.-","Q"),("--..","Z"),("--..--",","),("--...","7"),("-.","N"),("-.-","K"),("-.--","Y"),("-.--.","("),("-.--.-",")"),("-.-.","C"),("-.-.--","!"),("-.-.-.",";"),("-..","D"),("-..-","X"),("-..-.","/"),("-...","B"),("-...-","="),("-....","6"),("-....-","-"),(".","E"),(".-","A"),(".--","W"),(".---","J"),(".----","1"),(".----.","'"),(".--.","P"),(".--.-.","@"),(".-.","R"),(".-.-.","+"),(".-.-.-","."),(".-..","L"),(".-..-.","\""),(".-...","&"),("..","I"),("..-","U"),("..---","2"),("..--.-","_"),("..--..","?"),("..-.","F"),("...","S"),("...-","V"),("...--","3"),("...---...","SOS"),("...-..-","$"),("....","H"),("....-","4"),(".....","5")]

