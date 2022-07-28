module Kyu7.Arach where

drawSpider :: Int -> Int -> Char -> Char -> String
drawSpider lengthSize bodySize mouth eye = fst l ++ fst b ++ e ++ [mouth] ++ e ++ snd b ++ snd l
  where
    e = replicate (eyes bodySize `div` 2) eye
    b = body bodySize
    l = legs lengthSize

eyes :: (Integral b, Num a) => b -> a
eyes bodySize = 2 ^ bodySize

legs :: (Eq a, Num a) => a -> ([Char], [Char])
legs 1 = ("^", "^")
legs 2 = ("/\\", "/\\")
legs 3 = ("/╲", "╱\\")
legs 4 = ("╱╲", "╱╲")
legs _ = ("", "")

body :: (Eq a, Num a) => a -> ([Char], [Char])
body 1 = ("(", ")")
body 2 = ("((", "))")
body 3 = ("(((", ")))")
body _ = ("", "")
