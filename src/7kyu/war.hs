module War where

alphabetWar :: String -> String
alphabetWar chars
    | left > right = "Left side wins!"
    | right > left = "Right side wins!"
    | otherwise = "Let's fight again!"
    where
        left = sum (map points (leftWins chars))
        right = sum (map points (rightWins chars))

points :: Num p => Char -> p
points w
    | w == 'w' || w == 'm' = 4
    | w == 'p' || w == 'q' = 3
    | w == 'b' || w == 'd' = 2
    | w == 's' || w == 'z' = 1
    | otherwise = 0

leftWins :: [Char] -> [Char]
leftWins = filter (\ x -> x `elem` ['w', 'p', 'b', 's'])

rightWins :: [Char] -> [Char]
rightWins = filter (\ x -> x `elem` ['m', 'q', 'd', 'z'])
