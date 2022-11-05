module Kyu7.OddOrEvenSpec where

import Kyu7.OddOrEven (oddOrEven)
import Test.Hspec

spec :: Spec
spec = do
  describe "tests" $ do
    it "odd" $ do
      oddOrEven [1] `shouldBe` "odd"
      oddOrEven [-1] `shouldBe` "odd"
      oddOrEven [1, -2] `shouldBe` "odd"
      oddOrEven [2, 5, 34, 6] `shouldBe` "odd"
    it "even" $ do
      oddOrEven [0] `shouldBe` "even"
      oddOrEven [2] `shouldBe` "even"
      oddOrEven [-2] `shouldBe` "even"
      oddOrEven [] `shouldBe` "even"
