module Kyu7.Operation2 where

data Operation = Add | Divide | Multiply | Subtract deriving (Eq, Show, Ord, Enum, Bounded)

arithmetic :: (Fractional a) => a -> a -> Operation -> a
arithmetic a b operator = op operator a b

op :: (Fractional a) => Operation -> a -> a -> a
op Add = (+)
op Subtract = (-)
op Multiply = (*)
op Divide = (/)
