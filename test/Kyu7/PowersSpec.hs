module Kyu7.PowersSpec (spec) where

import Kyu7.Powers (powers)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    powers 1 `shouldBe` [1]
    powers 2 `shouldBe` [2]
    powers 6 `shouldBe` [2,4]
