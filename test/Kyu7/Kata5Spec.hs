module Kyu7.Kata5Spec where

import Kyu7.Kata5 (longest)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      longest ["simple", "is", "better", "than", "complex"] `shouldBe` 7
      longest ["explicit", "is", "better", "than", "implicit"] `shouldBe` 8
      longest ["beautiful", "is", "better", "than", "ugly"] `shouldBe` 9      
