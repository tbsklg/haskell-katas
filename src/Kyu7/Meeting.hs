module Kyu7.Meeting where

import Data.List (elemIndex)

meeting :: String -> Either String Int
meeting s = case elemIndex 'O' s of
  Just x -> Right x
  Nothing -> Left "None available!"

-- meeting = maybe (Left "None available!") Right . findIndex (=='O')
