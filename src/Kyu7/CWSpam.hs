module Kyu7.CWSpam where

spam :: Int -> String
spam i = concat . replicate i $ "hue"