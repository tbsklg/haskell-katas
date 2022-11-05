module Kyu7.StraySpec (spec) where

import Kyu7.Stray (stray)
import Test.Hspec

spec :: Spec
spec = do
  it "example test" $ do
    stray [1, 1, 2] `shouldBe` 2
