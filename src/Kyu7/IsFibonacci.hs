module Kyu7.IsFibonacci (isFibo) where

isFibo :: Int -> Int -> Int -> Bool
isFibo a b f = (==) f . head . dropWhile (<f) . fibo a $ b

fibo :: Int -> Int -> [Int]
fibo a b = a : b : zipWith (+) (fibo a b) (tail (fibo a b))