module Kyu7.TrueOrFalse where

import Prelude hiding (Bool (..), (&&), (||), not, otherwise)

data Bool = True | False deriving (Eq, Show)

-- Boolean and
infixr 3 &&
(&&) :: Bool -> Bool -> Bool
(&&) True True = True
(&&) _ _ = False

-- Boolean or
infixr 2 ||
(||) :: Bool -> Bool -> Bool
(||) True True = True
(||) True False = True 
(||) False True = True 
(||) _ _ = False 

-- Boolean not
not :: Bool -> Bool
not True = False
not False = True

-- same as True, make guards more readable
otherwise :: Bool
otherwise = True

-- `bool x y p` evaluates to x when p is False, and evaluates to y when p is True
bool :: a -> a -> Bool -> a
bool x _ False = x
bool _ y True = y
