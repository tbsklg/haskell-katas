module Kyu6.FindMissingSpec where

import Kyu6.FindMissing (findMissing)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "findMissing" $ do
    it "should work for some simple tests" $ do
      findMissing [1, 2, 3, 4, 6] `shouldBe` 5
      findMissing [1, 3, 5, 9] `shouldBe` 7
      findMissing [1, 3, 4] `shouldBe` 2
      findMissing [1, 2, 4, 5] `shouldBe` 3
      findMissing [1, 2, 4] `shouldBe` 3

    it "should work for some random tests" $ do
      property $ \x ->
        -- start value
        forAll nonzero $ \y ->
          -- offset
          forAll positive $ \n ->
            -- missing index
            forAll (greater 3) $ \z ->
              -- sequence length
              let xs' = take z [x, x + y ..] -- an arithmetic sequence
                  n' = min (z - 2) n -- an index guaranteed to be in that sequence
                  x' = x + y * n' -- the according number in the sequence
                  xs = filter (/= x') $ xs' -- the sequence without that number
               in findMissing xs `shouldBe` x' -- the test against your function
    it "should work for some random tests with infinite lists" $ do
      property $ \x ->
        -- start value
        forAll nonzero $ \y ->
          -- offset
          forAll positive $ \n ->
            -- missing index
            let xs' = [x, x + y ..] -- an arithmetic sequence
                x' = x + y * n :: Integer -- the according number in the sequence
                xs = filter (/= x') $ xs' -- the sequence without that number
             in findMissing xs `shouldBe` x' -- the test against your function
  where
    greater :: (Ord n, Arbitrary n) => n -> Gen n
    greater n = arbitrary `suchThat` (> n)
    positive, nonzero :: (Num n, Eq n, Ord n, Arbitrary n) => Gen n
    positive = greater 0
    nonzero = arbitrary `suchThat` (/= 0)
