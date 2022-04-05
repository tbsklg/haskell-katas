module Kyu7.AlternatingSpec (spec) where

import Kyu7.Alternating (f)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    f [3,4,5] 3 `shouldBe` 4
    f [3,4,5] 4 `shouldBe` 5
    f [3,4,5] 5 `shouldBe` 3
  it "more example tests" $ do
    f [10,20,100]  10 `shouldBe` 20
    f [10,20,100]  20 `shouldBe` 100
    f [10,20,100] 100 `shouldBe` 10
