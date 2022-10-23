module Kyu7.NumberFactorsSpec where
import Kyu7.NumberFactors
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The getFactors function" $ do
    it "should work for some examples" $ do
      getFactors 1 `shouldBe` [1]
      getFactors 2 `shouldBe` [1,2]
      getFactors 3 `shouldBe` [1,3]
