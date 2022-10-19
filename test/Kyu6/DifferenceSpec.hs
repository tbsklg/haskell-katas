module Kyu6.DifferenceSpec where
import Kyu6.Difference (difference)
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "difference" $ do     
    it "example with one occurrence" $ do
      difference [1,2,3] [2] `shouldBe` [1,3]
      difference [1,2,3] [1,2] `shouldBe` [3]
    it "example with two occurrences" $ do
      difference [1,2,2,3] [2] `shouldBe` [1,3]
