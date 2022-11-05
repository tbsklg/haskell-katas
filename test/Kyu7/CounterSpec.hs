module Kyu7.CounterSpec (spec) where

import Kyu7.Counter (ones)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    -- ones [0, 0, 0, 0, 0, 0, 0, 0] `shouldBe` []
    ones [1, 1, 1, 1, 1] `shouldBe` [5]
    ones [1, 1, 1, 0, 0, 1, 0, 1, 1, 0] `shouldBe` [3, 1, 2]
    ones [0, 0, 0, 1, 0, 0, 1, 1] `shouldBe` [1, 2]
    ones [1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1] `shouldBe` [1, 2, 4, 1]
