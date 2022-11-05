module Kyu7.GetSumSpec (spec) where

import Kyu7.GetSum
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    getSum 0 1 `shouldBe` 1
    getSum 1 2 `shouldBe` 3
    getSum 5 (-1) `shouldBe` 14
    getSum 505 4 `shouldBe` 127759
    getSum 321 123 `shouldBe` 44178
    getSum 0 (-1) `shouldBe` (-1)
    getSum (-50) 0 `shouldBe` (-1275)
    getSum (-1) (-5) `shouldBe` (-15)
    getSum (-5) (-5) `shouldBe` (-5)
    getSum (-505) 4 `shouldBe` (-127755)
    getSum (-321) 123 `shouldBe` (-44055)
    getSum 0 0 `shouldBe` 0
    getSum (-5) (-1) `shouldBe` (-15)
    getSum 5 1 `shouldBe` 15
    getSum (-17) (-17) `shouldBe` (-17)
    getSum 17 17 `shouldBe` 17
