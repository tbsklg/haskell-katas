module Kyu7.IncrementerSpec (spec) where

import Kyu7.Incrementer (incrementer)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    incrementer [] `shouldBe` []
    incrementer [1, 2, 3] `shouldBe` [2, 4, 6]
    incrementer [4, 6, 9, 1, 3] `shouldBe` [5, 8, 2, 5, 8]