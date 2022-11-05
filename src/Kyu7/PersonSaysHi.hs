module Kyu7.PersonSaysHi where

import Text.Printf (printf)

data Person = Person {firstName :: String, lastName :: String}

sayHi :: Person -> String
sayHi Person {firstName = f, lastName = l} = printf "Hi, i'am %s %s and it is nice to meet You." f l
