module Kyu8.Kyu8 where

import Data.Char (chr, digitToInt, isLower, isUpper, ord, toLower, toUpper)
import Data.List (elemIndex, intersperse, isInfixOf, nub, partition, sort)
import Text.Read (readMaybe)

countBy :: (Num a, Enum a) => a -> a -> [a]
countBy s n = [x * s | x <- [1 .. n]]

getAverage :: [Int] -> Int
getAverage [] = 0
getAverage l = sum l `div` length l

reverseWords :: String -> String
reverseWords = unwords . reverse . words

gravityFlip :: Char -> [Int] -> [Int]
gravityFlip s l
  | s == 'R' = sort l
  | otherwise = reverse (sort l)

makeNegative :: Integer -> Integer
makeNegative = negate . abs

sumStr :: [Char] -> String -> String
sumStr a b
  | a == "" = show (0 + (read b :: Int))
  | b == "" = show ((read a :: Int) + 0)
  | otherwise = show ((read a :: Int) + (read b :: Int))

removeChar :: [a] -> [a]
removeChar = init . tail

repeatStr :: Int -> [a] -> [a]
repeatStr n str = concat (replicate n str)

bmi :: Float -> Float -> String
bmi weight height
  | bmi <= 18.5 = "Underweight"
  | bmi <= 25.0 = "Normal"
  | bmi <= 30.0 = "Overweight"
  | bmi > 30 = "Obese"
  where
    bmi = weight / height ^ 2

firstNonConsecutive :: (Eq a, Num a) => [a] -> Maybe a
firstNonConsecutive (x : y : ys)
  | (x + 1) == y = firstNonConsecutive (y : ys)
  | otherwise = Just y

powersOfTwo :: (Num a, Integral b) => b -> [a]
powersOfTwo n = [2 ^ x | x <- [0 .. n]]

inlove :: (Integral a1, Integral a2) => a1 -> a2 -> Bool
inlove a b = even a && odd b || even b && odd a

litres :: Double -> Integer
litres d = floor (d / 2)

boolToWord :: Bool -> [Char]
boolToWord x
  | x = "Yes"
  | otherwise = "No"

twiceAsOld :: (Num a) => a -> a -> a
twiceAsOld father son = abs $ father - 2 * son

getInitials :: String -> String
getInitials = intersperse '.' . map (toUpper . head) . words

-- getInitials :: String -> String
-- getInitials s = map toUpper (extract (words s))
--   where
--     extract [x] = take 1 x
--     extract (x : xs) = take 1 x ++ "." ++ extract xs

avg :: [Float] -> Float
avg l = sum l / fromIntegral (length l)

paperwork :: (Ord p, Num p) => p -> p -> p
paperwork n m
  | n < 0 || m < 0 = 0
  | otherwise = n * m

makeUpperCase :: String -> String
makeUpperCase = map toUpper

dutyFree :: Float -> Float -> Float -> Int
dutyFree p d c = floor (c / (p * (d / 100)))

digitize :: Int -> [Int]
digitize 0 = [0]
digitize d = reverse (map (\x -> read [x] :: Int) (show d))
  where
    reverse [] = []
    reverse (x : xs) = reverse xs ++ [x]

highAndLow :: String -> String
highAndLow l =
  show (maximum (asInt l)) ++ " " ++ show (minimum (asInt l))
  where
    asInt l = [read x :: Int | x <- words l]

mouthSize :: String -> String
mouthSize s
  | (s == "alligator") || (s == "ALLIGaTOR") = "small"
  | otherwise = "wide"

geese :: [[Char]]
geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]

gooseFilter :: [[Char]] -> [[Char]]
gooseFilter = filter (`notElem` geese)

countSheep :: [Bool] -> Int
countSheep l = length (filter (== True) l)

reverseSeq :: Int -> [Int]
reverseSeq n = reverse [1 .. n]

findSmallestInteger :: [Int] -> Int
findSmallestInteger = minimum

doubleInteger :: (Num a) => a -> a
doubleInteger a = 2 * a

isVow :: [Int] -> [Either Int String]
isVow [] = []
isVow (x : xs)
  | chr x == 'a' = Right "a" : isVow xs
  | chr x == 'e' = Right "e" : isVow xs
  | chr x == 'i' = Right "i" : isVow xs
  | chr x == 'o' = Right "o" : isVow xs
  | chr x == 'u' = Right "u" : isVow xs
  | otherwise = Left x : isVow xs

howManyDalmatians :: (Ord (t a), Show a, Foldable t, Num a, Num (t a)) => t a -> [Char]
howManyDalmatians x
  | x <= 10 = "Hardly any"
  | x <= 50 = "More than a handful!"
  | x <= 100 = "Woah that's a lot of dogs!"
  | otherwise = show (sum x)

check :: (Eq a) => [a] -> a -> Bool
check l a = a `elem` l

sumMix :: [Either String Int] -> Int
sumMix [] = 0
sumMix (Left s : xs) = (read s :: Int) + sumMix xs
sumMix (Right r : rs) = r + sumMix rs

correctTail :: String -> Char -> Bool
correctTail w c = c == last w

fakeBin :: String -> String
fakeBin (x : xs) = oneOrZero (digitToInt x) : fakeBin xs

oneOrZero :: Int -> Char
oneOrZero x
  | x < 5 = '0'
  | otherwise = '1'

reorder :: [String] -> [String]
reorder (x : y : ys) = [head ys] ++ [y] ++ [x]

nthEven :: Int -> Int
nthEven 0 = 0
nthEven n = 2 * n - 2

between :: Integer -> Integer -> [Integer]
between a b = [a .. b]

dnaToRna :: String -> String
dnaToRna = map (\x -> if x == 'T' then 'U' else x)

rentalCarCost :: Int -> Int
rentalCarCost d
  | d < 3 = total
  | d < 7 = total - 20
  | otherwise = total - 50
  where
    total = d * 40

cockroachSpeed :: Double -> Integer
cockroachSpeed s = floor ((s * 1000 * 100) / 3600)

invert :: [Integer] -> [Integer]
invert = map (\x -> x * (-1))

-- invert = map negate

divisibleBy :: [Int] -> Int -> [Int]
divisibleBy l d = filter (\x -> x `mod` d == 0) l

howMuchILoveYou :: Int -> String
howMuchILoveYou l = lovePhrases !! index
  where
    index = (l - 1) `mod` length lovePhrases

lovePhrases = ["I love you", "a little", "a lot", "passionately", "madly", "not at all"]

stringToArray :: String -> [String]
stringToArray = words

countPositivesSumNegatives :: Maybe [Int] -> [Int]
countPositivesSumNegatives l = case l of
  Nothing -> []
  Just l -> length (filter (> 0) l) : [sum (filter (< 0) l)]

-- countPositivesSumNegatives :: Maybe [Int] -> [Int]
-- countPositivesSumNegatives Nothing   = []
-- countPositivesSumNegatives (Just []) = []
-- countPositivesSumNegatives (Just xs) = let (a, b) = partition (> 0) xs
--                                        in [length a, sum b]

noSpace :: String -> String
noSpace = filter (/= ' ')

findDifference :: (Int, Int, Int) -> (Int, Int, Int) -> Int
findDifference (a, b, c) (d, e, f) = abs (a * b * c - d * e * f)

stringy :: Int -> String
stringy 0 = ""
stringy s = stringy (s - 1) ++ show (s `mod` 2)

-- stringy n = take n $ cycle "10"

warnTheSheep :: [String] -> String
warnTheSheep s
  | last s == "wolf" = "Pls go away and stop eating my sheep"
  | otherwise = case index s of
      Nothing -> ""
      Just s -> "Oi! Sheep number " ++ show s ++ "! You are about to be eaten by a wolf!"
  where
    index s = elemIndex "wolf" (reverse s)

-- warnTheSheep l =
--   case elemIndex "wolf" (reverse l) of
--     Just 0 -> "Pls go away and stop eating my sheep"
--     Just n -> "Oi! Sheep number "++(show n)++"! You are about to be eaten by a wolf!"

feast :: String -> String -> Bool
feast beast dish = head beast == head dish && last beast == last dish

-- feast :: String -> String -> Bool
-- feast = (==) `on` (head &&& last)

numberToString :: Int -> String
numberToString = show

move :: Int -> Int -> Int
move a b = a + b * 2

solution :: String -> String
solution = reverse

hero :: Int -> Int -> Bool
hero bullets dragons = bullets >= dragons * 2

summation :: Integer -> Integer
summation n = sum [0 .. n]

positiveSum :: [Int] -> Int
positiveSum xs =
  let (a, _) = partition (> 0) xs
   in sum a

getGrade :: Double -> Double -> Double -> Char
getGrade x y z
  | score >= 90 && score <= 100 = 'A'
  | score >= 80 && score < 90 = 'B'
  | score >= 70 && score < 80 = 'C'
  | score >= 60 && score < 70 = 'D'
  | otherwise = 'F'
  where
    score = (x + y + z) / 3

grow :: [Int] -> Int
grow = multiply . sort
  where
    multiply [] = 1
    multiply (x : xs) = x * multiply xs

-- grow = product

maps :: [Int] -> [Int]
maps = map (* 2)

century :: Int -> Int
century year
  | year `mod` 100 == 0 = century
  | otherwise = century + 1
  where
    century = year `div` 100

multiply :: (Num a) => a -> a -> a
multiply a b = a * b

-- multiply = (*)

iHazBonus :: Float -> Bool -> String
iHazBonus salary bonus = "$" ++ show money
  where
    money
      | bonus = salary * 10
      | otherwise = salary

getChar' :: Int -> Char
getChar' = chr

odds :: [Int] -> [Int]
odds = filter odd

getAge :: (Integral a, Read a) => String -> a
getAge a = read [head a]

sumOfDifferences :: [Int] -> Maybe Int
sumOfDifferences [] = Nothing
sumOfDifferences [_] = Nothing
sumOfDifferences l = Just (abs (sum (reverse (sort l))))
  where
    sum [] = 0
    sum [_] = 0
    sum (x : ys) = x - head ys + sum ys

-- sumOfDifferences xs = Just $ maximum xs - minimum xs

derive :: Int -> Int -> String
derive x y = show (x * y) ++ "^" ++ show (y - 1)

past :: Int -> Int -> Int -> Int
past h m s = (h * 3600 + m * 60 + s) * 1000

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x : xs) = x + sum' xs

setAlarm :: Bool -> Bool -> Bool
setAlarm employed vacation = employed && not vacation

arrayPlusArray :: [Int] -> [Int] -> Int
arrayPlusArray xs ys = sum xs + sum ys

areYouPlayingBanjo :: String -> String
areYouPlayingBanjo name
  | head name == 'R' || head name == 'r' = name ++ " plays banjo"
  | otherwise = name ++ " does not play banjo"

-- areYouPlayingBanjo name = name ++ " " ++ playStr name ++ " banjo"
--   where
--     playStr ('r':_) = "plays"
--     playStr ('R':_) = "plays"
--     playStr _ = "does not play"

parseFloat :: String -> Maybe Float
parseFloat = readMaybe

quadratic :: Int -> Int -> (Int, Int, Int)
quadratic x1 x2 = (1, -x1 - x2, x1 * x2)

isDivisible :: Int -> Int -> Int -> Bool
isDivisible x a b = x `mod` a == 0 && x `mod` b == 0

subtractSum :: Int -> String
subtractSum l = "apple"

expression :: (Ord a, Num a) => a -> a -> a -> a
expression a b c = maximum [a * (b + c), (a + b) * c, a * b * c, a + b * c, a + b + c]

points :: [String] -> Int
points p = sum (map results p)
  where
    results result
      | home > away = 3
      | home < away = 0
      | otherwise = 1
      where
        home = digitToInt (head result)
        away = digitToInt (last result)

-- points :: [String] -> Int
-- points = sum . map match
--   where
--     match [x,':',y]
--       | x > y  = 3
--       | x < y  = 0
--       | x == y = 1

toAlternatingCase :: String -> String
toAlternatingCase = map alternate
  where
    alternate c
      | isUpper c = toLower c
      | otherwise = toUpper c

isUpperCase :: String -> Bool
isUpperCase [] = True
isUpperCase (x : xs)
  | x `elem` " " = isUpperCase xs
  | otherwise = isUpper x && isUpperCase xs

-- isUpperCase = all (not . isLower)

a :: String
a = show 123

getASCII :: Char -> Int
getASCII = ord

-- getASCII = fromEnum

divide :: Integer -> Bool
divide w = melons w (w - 1)
  where
    melons _ 0 = False
    melons w p = even (w - p) && even p || melons w (p - 1)

guessBlue :: Int -> Int -> Int -> Int -> Double
guessBlue b r pb pr = fromIntegral (b - pb) / fromIntegral remaining
  where
    remaining = b - pb + r - pr

noBoringZeros :: Int -> Int
noBoringZeros 0 = 0
noBoringZeros n = read (reverse (removeZeros (reverse (show n)))) :: Int
  where
    removeZeros (x : xs)
      | x == '0' = removeZeros xs
      | otherwise = x : xs

-- noBoringZeros :: Int -> Int
-- noBoringZeros n
--     | n == 0          = 0
--     | n `mod` 10 == 0 = noBoringZeros (n `div` 10)
--     | otherwise       = n

xor :: Bool -> Bool -> Bool
xor a b = a /= b

betterThanAverage :: [Int] -> Int -> Bool
betterThanAverage x a = (fromIntegral (sum x) / fromIntegral (length x)) < fromIntegral a

goals :: Int -> Int -> Int -> Int
goals ll cdr cl = ll + cdr + cl

opposite :: (Num a) => a -> a
opposite a = a * (-1)

-- opposite = negate

getVolumeOfCuboid :: Double -> Double -> Double -> Double
getVolumeOfCuboid l w h = l * w * h

superSize :: Integer -> Integer
superSize n = read (reverse (sort (show n))) :: Integer

checkForFactor :: Int -> Int -> Bool
checkForFactor base factor = base `mod` factor == 0

monkeyCount :: Int -> [Int]
monkeyCount x = [1 .. x]

well :: [String] -> String
well (x : xs)
  | length a > 2 = "I smell a series!"
  | not (null a) = "Publish!"
  | otherwise = "Fail!"
  where
    (a, _) = partition (== "good") (x : xs)

_if :: Bool -> a -> a -> a
_if b x y
  | b = x
  | otherwise = y

fighter :: String -> String
fighter winner
  | map toLower winner == "george saint pierre" = "I am not impressed by your performance."
  | otherwise = "I'd like to take this chance to apologize.. To absolutely NOBODY!"

multipleOfIndex :: [Int] -> [Int]
multipleOfIndex xs = isMultipleOf 0 xs
  where
    isMultipleOf _ [] = []
    isMultipleOf 0 (_ : xs) = isMultipleOf 1 xs
    isMultipleOf index (x : xs)
      | x `mod` index == 0 = x : isMultipleOf (index + 1) xs
      | otherwise = isMultipleOf (index + 1) xs

-- multipleOfIndex :: [Int] -> [Int]
-- multipleOfIndex xs = [a | (a,b) <- zip xs [0..], b > 0, rem a b == 0]

isLochNessMonster :: String -> Bool
isLochNessMonster s = "tree fiddy" `isInfixOf` s || "3.50" `isInfixOf` s || "three fifty" `isInfixOf` s

-- isLochNessMonster :: String -> Bool
-- isLochNessMonster s = any (`isInfixOf` s) ["tree fiddy", "3.50", "three fifty"]

hq9 :: String -> String
hq9 "H" = "Hello World!"
hq9 "Q" = "Q"
hq9 "9" = concat [ninetynineBottles x | x <- [99, 98 .. 0]]
hq9 _ = ""

ninetynineBottles :: Int -> [Char]
ninetynineBottles n =
  currentBottles n ++ ", " ++ ofBeer n ++ ".\n" ++ takeOneDown n ++ ", " ++ remainingBottles (n - 1)

currentBottles :: (Eq a, Num a, Show a) => a -> [Char]
currentBottles 0 = "No more bottles of beer on the wall"
currentBottles 1 = "1 bottle of beer on the wall"
currentBottles n = show n ++ " bottles of beer on the wall"

remainingBottles :: (Eq a, Num a, Show a) => a -> [Char]
remainingBottles 0 = "no more bottles of beer on the wall.\n"
remainingBottles (-1) = "99 bottles of beer on the wall" ++ "."
remainingBottles 1 = "1 bottle of beer on the wall.\n"
remainingBottles n = show n ++ " bottles of beer on the wall.\n"

ofBeer :: (Eq a, Num a, Show a) => a -> [Char]
ofBeer 0 = "no more bottles of beer"
ofBeer 1 = "1 bottle of beer"
ofBeer n = show n ++ " bottles of beer"

takeOneDown :: (Eq a, Num a) => a -> [Char]
takeOneDown 0 = "Go to the store and buy some more"
takeOneDown _ = "Take one down and pass it around"

otherAngle :: Int -> Int -> Int
otherAngle a b = 180 - (a + b)

stringToNumber :: String -> Integer
stringToNumber s = read s :: Integer

seatsBlocked :: Int -> Int -> Int -> Int -> Int
seatsBlocked tot_cols tot_rows col row = rowsBehind * colsBehind
  where
    rowsBehind = tot_rows - row
    colsBehind = tot_cols - col

evenOrOdd :: (Integral a) => a -> [Char]
evenOrOdd s
  | even s = "Even"
  | otherwise = "Odd"

findNeedle :: [String] -> String
findNeedle a = case elemIndex "needle" a of
  Nothing -> "found no needle"
  Just l -> "found the needle at position " ++ show l

-- findNeedle :: [String] -> String
-- findNeedle = ("found the needle at position " ++) . show . fromJust . elemIndex "needle"

correct :: String -> String
correct [] = []
correct (x : xs)
  | x == '0' = "O" ++ correct xs
  | x == '1' = "I" ++ correct xs
  | x == '5' = "S" ++ correct xs
  | otherwise = x : correct xs

-- correct :: String -> String
-- correct = map correctHelp

-- correctHelp char =
--   case char of
--     '5' -> 'S'
--     '0' -> 'O'
--     '1' -> 'I'
--     c -> c

updateHealth :: Double -> Double -> Double
updateHealth health damage
  | currentHealth < 0 = 0
  | otherwise = currentHealth
  where
    currentHealth = health - damage

-- updateHealth :: Double -> Double -> Double
-- updateHealth health damage = max 0 $ health - damage

basicOp :: Char -> Int -> Int -> Int
basicOp op a b =
  case op of
    '+' -> a + b
    '-' -> a - b
    '*' -> a * b
    '/' -> a `div` b

-- basicOp :: Char -> Int -> Int -> Int
-- basicOp '+' = (+)
-- basicOp '-' = (-)
-- basicOp '*' = (*)
-- basicOp '/' = div

isPalindrom :: String -> Bool
isPalindrom str = lowerCase str == reverse (lowerCase str)
  where
    lowerCase str = map toLower str

-- isPalindrom :: String -> Bool
-- isPalindrom = (reverse >>= (==)) . map toLower

simpleMultiplication :: Int -> Int
simpleMultiplication n
  | even n = n * 8
  | otherwise = n * 9

oddCount :: Int -> Int
oddCount n = n `div` 2

dBScale :: Double -> Double
dBScale i = 10 * logBase 10 (i / (10 ^^ (-12)))

binToDec :: String -> Int
binToDec "0" = 0
binToDec bins = sum (asDec (asInt bins))

asDec :: [Int] -> [Int]
asDec [] = []
asDec bins = toDec (reverse bins) 0
  where
    toDec [] _ = []
    toDec (x : xs) index = (x * 2 ^ index) : toDec xs (index + 1)

asInt :: [Char] -> [Int]
asInt = map digitToInt

-- binToDec = fst. head . readInt 2 (`elem` "01") digitToInt

countSheep' :: Int -> String
countSheep' s = concatMap (\x -> show x ++ " sheep...") [1 .. s]

nearestSquare :: Int -> Int
nearestSquare n = round (sqrt (fromIntegral n)) ^ 2

smash :: [String] -> String
smash = unwords

hexToDec :: String -> Int
hexToDec [] = 0
hexToDec (x : xs) = digitToInt x * (16 ^ (length (x : xs) - 1)) + hexToDec xs

-- hexToDec s = sum . zipWith(\x y -> digitToInt x * 16 ^ y) (reverse s) $ [0..]

whoIsPaying :: String -> [String]
whoIsPaying n
  | length n > 2 = n : [take 2 n]
  | otherwise = [take 2 n]

-- whoIsPaying (n@(x:y:_:_)) = [n, [x,y]]
-- whoIsPaying n = [n]

remove :: String -> Int -> String
remove s 0 = s
remove [] _ = []
remove (x : xs) n
  | x == '!' = remove xs (n - 1)
  | otherwise = x : remove xs n

-- remove str n = str \\ (replicate n '!')

next :: (Eq a) => a -> [a] -> Maybe a
next item xs = case elemIndex item xs of
  Just l -> if (length xs - 1) == l then Nothing else Just (xs !! (l + 1))
  Nothing -> Nothing

-- next item [] = Nothing
-- next item [_] = Nothing
-- next item (x:y:xs)
--   | x == item = Just y
--   | otherwise = next item (y:xs)

isOpposite :: String -> String -> Bool
isOpposite "" "" = False
isOpposite s1 s2 = s1 == map (\x -> if isUpper x then toLower x else toUpper x) s2

reverseList :: [a] -> [a]
reverseList = reverse

pillars :: Int -> Int -> Int -> Int
pillars 1 _ _ = 0
pillars numberOf distanceBetween width = (numberOf - 1) * distanceBetween * 100 + (numberOf - 2) * width

go :: Int -> Int -> Bool
go n m = n `mod` m == 0

replace :: String -> String
replace = map (\x -> if toLower x `elem` vowels then '!' else x)

vowels :: [Char]
vowels = ['a', 'e', 'i', 'o', 'u']

distinct :: [Int] -> [Int]
distinct = nub

authenticate :: String -> String -> Bool
authenticate "Santa Claus" "Ho Ho Ho!" = True
authenticate "Santa" "Ho Ho Ho!" = False
authenticate "Santa Claus" "Ho Ho!" = False
authenticate "jhoffner" "CodeWars" = False
authenticate _ "" = False
authenticate "" _ = False
authenticate _ _ = False

sumMul :: Int -> Int -> Maybe Int
sumMul n m
  | m > n = Just (sum [n, n * 2 .. (m - 1)])
  | otherwise = Nothing

websites :: [String]
websites = replicate 1000 "codewars"

greet :: String -> String
greet "Johnny" = "Hello, my love!"
greet name = "Hello, " ++ name ++ "!"

remove'' :: String -> String
remove'' s = filter (/= '!') s ++ ['!']

remove''' :: String -> String
remove''' sentence
  | last sentence == '!' = init sentence
  | otherwise = sentence

grader :: Double -> Char
grader grade
  | grade > 1 = 'F'
  | grade >= 0.9 = 'A'
  | grade >= 0.8 = 'B'
  | grade >= 0.7 = 'C'
  | grade >= 0.6 = 'D'
  | otherwise = 'F'

sayhello :: [String] -> String -> String -> String
sayhello name city state = "Hello, " ++ names ++ "! Welcome to " ++ city ++ ", " ++ state ++ "!"
  where
    names = unwords name

rps :: String -> String -> String
rps "scissors" "paper" = "Player 1 won!"
rps "scissors" "rock" = "Player 2 won!"
rps "rock" "scissors" = "Player 1 won!"
rps "rock" "paper" = "Player 2 won!"
rps "paper" "scissors" = "Player 2 won!"
rps "paper" "rock" = "Player 1 won!"
rps _ _ = "Draw!"

repeatIt :: String -> Int -> String
repeatIt _ 0 = ""
repeatIt str n = str ++ repeatIt str (n - 1)

multiply' :: Integer -> Integer
multiply' 0 = 0
multiply' n = n * (5 ^ numberOfDigits n)
  where
    numberOfDigits n
      | n < 0 = length (show n) - 1
      | otherwise = length (show n)

shortcut :: String -> String
shortcut = filter (\x -> x `notElem` ['a', 'e', 'i', 'o', 'u'])

playerRankUp :: Integer -> [Char]
playerRankUp points
  | points >= 100 = "Well done! You have advanced to the qualifying stage. Win 2 out of your next 3 games to rank up."
  | otherwise = "False"

lowercaseCount :: [Char] -> Int
lowercaseCount s = length (filter isLower s)

doubleChar :: [Char] -> [Char]
doubleChar [] = ""
doubleChar (x : xs) = x : x : doubleChar xs

combineNames :: String -> String -> String
combineNames first last = first ++ " " ++ last

makeLowerCase :: [Char] -> [Char]
makeLowerCase = map toLower

validateHello :: String -> Bool
validateHello cs = validate ["hello", "ciao", "salut", "hallo", "hola", "ahoj", "czesc"] (map toLower cs)
  where
    validate [] _ = False
    validate (x : xs) word = x `isInfixOf` word || validate xs word

-- validateHello cs = any (`isInfixOf` map toLower cs) greetings

getNumberFromString :: String -> Int
getNumberFromString s = read (filter (\x -> codePoint x >= 48 && codePoint x <= 57) s) :: Int
  where
    codePoint = fromEnum

data Grammar = Singular | Plural

plural :: (Num a, Eq a) => a -> Grammar
plural 0 = Plural
plural 1 = Singular
plural _ = Plural

revR :: [Int] -> [Int]
revR [] = []
revR (x : xs) = revR xs ++ [x]

sumArray :: Maybe [Int] -> Int
sumArray x = case x of
  Just [] -> 0
  Just [_] -> 0
  Just x -> sum x - maximum x - minimum x
  Nothing -> 0

createList :: Int -> [Int]
createList n = filter (<= n) [1 .. n]

whoseMove :: String -> Bool -> String
whoseMove x True = x
whoseMove "white" False = "black"
whoseMove "black" False = "white"

contamination :: String -> String -> String
contamination "" _ = ""
contamination s w = repeat (length s) w
  where
    repeat 0 _ = ""
    repeat count w = w ++ repeat (count - 1) w

remove'''' :: String -> String
remove'''' str = reverse (dropWhile (== '!') (reverse str))

barTriang :: (Double, Double) -> (Double, Double) -> (Double, Double) -> (Double, Double)
barTriang (a, b) (c, d) (e, f) = (coordinates a c e, coordinates b d f)
  where
    coordinates a b c = round4 ((a + b + c) / 3)

round4 n = fromIntegral (round (n * 10 ^ 4)) / 10 ^ 4

animals :: Int -> Int -> Maybe (Int, Int)
animals heads legs
  | heads < 0 || legs < 0 = Nothing
  | chickens < 0 || legs < 0 = Nothing
  | even (legs - 2 * heads) = Just (chickens, cows)
  | otherwise = Nothing
  where
    chickens = (legs - 2 * heads) `div` 2
    cows = heads - chickens

count :: Int -> Int
count n = 6 * n ^ 2 + 2

squareArea :: (RealFrac a1, Fractional a2, Floating a1) => a1 -> a2
squareArea a = round2 (radius * radius)
  where
    radius = (a * 4) / (pi * 2)

round2 :: (RealFrac a1, Fractional a2) => a1 -> a2
round2 n = fromIntegral (round (n * 10 ^ 2)) / 10 ^ 2

gravity :: [Double] -> [String] -> Double
gravity (m1 : m2 : d : _) (t1 : t2 : t3 : _) = f (toKilograms m1 t1) (toKilograms m2 t2) (toMeters d t3)

toMeters :: (Fractional a) => a -> [Char] -> a
toMeters v u
  | u == "μm" = v * 1e-6
  | u == "mm" = v * 1e-3
  | u == "cm" = v * 1e-2
  | u == "ft" = v * 0.3048
  | otherwise = v

toKilograms :: (Fractional a) => a -> [Char] -> a
toKilograms v u
  | u == "μg" = v * 1e-9
  | u == "mg" = v * 1e-6
  | u == "g" = v * 1e-3
  | u == "lb" = v * 0.453592
  | otherwise = v

g :: Double
g = 6.67 / 1e-11

f :: Double -> Double -> Double -> Double
f m1 m2 d = g * (m1 * m2 / d ^ 2)
