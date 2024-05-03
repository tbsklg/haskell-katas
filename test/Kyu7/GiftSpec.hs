module Kyu7.GiftSpec (spec, main) where

import Kyu7.Gift (buy)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = do
  describe "something" $ do
    it "should return Nothing on an empty list" $
      property $
        \x -> buy (x :: Integer) [] `shouldBe` Nothing
    it "should return Nothing on a short list" $
      property $
        \x y -> buy (x :: Integer) [y] `shouldBe` Nothing
    it "should work for the examples" $ do
      buy 2 [1, 1] `shouldBe` Just (0, 1)
      buy 3 [1, 1] `shouldBe` Nothing
      buy 5 [5, 2, 3, 4, 5] `shouldBe` Just (1, 2)
      buy 5 [1, 2, 3, 4, 5] `shouldBe` Just (0, 3)
      buy 5 [0, 0, 0, 2, 3] `shouldBe` Just (3, 4)
    it "should return the correct indices if there are any" $
      property $
        forAll genX $ \x -> forAll genXs $ \xs ->
          case buy x (xs :: [Integer]) of
            Just (a, b) -> (xs !! a) + (xs !! b) == x
            Nothing -> True

genX = choose (1, 10)

genXs = do
  len <- choose (5, 10)
  vectorOf len (choose (0, 10))
