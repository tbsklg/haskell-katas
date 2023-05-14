module Kyu6.Group10Spec where

import Kyu6.Group10 (groupIn10s)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "groupIn10s" $ do
    it "works for some examples" $ do
      groupIn10s [] `shouldBe` []
      groupIn10s [1, 2, 3] `shouldBe` [[1, 2, 3]]
      groupIn10s [1, 10] `shouldBe` [[1], [10]]
      groupIn10s [0, 10 .. 100] `shouldBe` [[10 * x] | x <- [0 .. 10]]
      groupIn10s [100] `shouldBe` replicate 10 [] ++ [[100]]
      groupIn10s [8, 12, 3, 17, 19, 24, 35, 50] `shouldBe` [[3, 8], [12, 17, 19], [24], [35], [], [50]]

    it "returns a list with the correct length" $
      property $ \(Positive n) ->
        groupIn10s [n] `shouldSatisfy` \lst -> length lst == 1 + n `quot` 10

    it "does not introduce or remove numbers" $
      property $
        forAll (fmap (getOrdered . fmap getNonNegative) arbitrary) $ \xs ->
          groupIn10s xs `shouldSatisfy` \lst -> concat lst == xs

