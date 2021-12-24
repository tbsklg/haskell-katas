module Kyu7.DoubleEveryOtherSpec (spec) where

import Test.Hspec
import Kyu7.DoubleEveryOther (doubleEveryOther)

spec :: Spec
spec = do
  it "example tests" $ do
    doubleEveryOther [1,2,3,4] `shouldBe` [1,4,3,8]
