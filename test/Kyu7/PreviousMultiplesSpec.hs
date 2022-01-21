module Kyu7.PreviousMultiplesSpec (spec) where

import Kyu7.PreviousMultiples (prevMultOfThree)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    prevMultOfThree 1 `shouldBe` Nothing
    prevMultOfThree 25 `shouldBe` Nothing
    prevMultOfThree 36 `shouldBe` Just 36
    prevMultOfThree 1244 `shouldBe` Just 12
    prevMultOfThree 952406 `shouldBe` Just 9
