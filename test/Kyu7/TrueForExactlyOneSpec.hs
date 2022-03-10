module Kyu7.TrueForExactlyOneSpec (spec) where

import Kyu7.TrueForExactlyOne (one)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    one [1,2,3,4,5] (< 2) `shouldBe` True
    one [1,2,3,4,5]  odd  `shouldBe` False
    one [1,2,3,4,5] (> 5) `shouldBe` False
    one [1,2,3,4,5] (>=5) `shouldBe` True
