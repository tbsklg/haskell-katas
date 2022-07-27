module Kyu7.DescribeList where

describeList :: [a] -> String
describeList [] = "empty"
describeList [x] = "singleton"
describeList _ = "longer"
