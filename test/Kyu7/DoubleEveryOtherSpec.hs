module Kyu7.DoubleEveryOtherSpec (spec) where

import Kyu7.DoubleEveryOther (doubleEveryOther)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    doubleEveryOther [1, 2, 3, 4] `shouldBe` [1, 4, 3, 8]
