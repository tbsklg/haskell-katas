module Kyu7.RockPaperScissorsLizardSpock (RPSLS(..), rpsls) where

data RPSLS = Rock | Paper | Scissors | Lizard | Spock deriving (Show,Eq)

rpsls :: RPSLS -> RPSLS -> Ordering
rpsls Rock Lizard = GT
rpsls Rock Spock = LT
rpsls Rock Paper = LT
rpsls Rock Scissors = GT
rpsls Paper Rock = GT
rpsls Paper Lizard = LT
rpsls Paper Spock = GT
rpsls Paper Scissors = LT
rpsls Scissors Lizard = GT
rpsls Scissors Spock = LT
rpsls Scissors Rock = LT
rpsls Scissors Paper = GT
rpsls Lizard Paper = GT
rpsls Lizard Scissors = LT
rpsls Lizard Rock = LT
rpsls Lizard Spock = GT
rpsls Spock Rock = GT
rpsls Spock Lizard = LT
rpsls Spock Scissors = GT
rpsls Spock Paper = LT
rpsls _ _ = EQ
