module Kyu7.BubblesortOnceSpec (spec) where

import Kyu7.BubblesortOnce (bubblesortOnce)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    bubblesortOnce [9, 7, 5, 3, 1, 2, 4, 6, 8] `shouldBe` [7, 5, 3, 1, 2, 4, 6, 8, 9]
