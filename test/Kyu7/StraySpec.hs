module Kyu7.StraySpec (spec) where

import Test.Hspec
import Kyu7.Stray (stray)

spec :: Spec
spec = do
  it "example test" $ do
    stray [1,1,2] `shouldBe` 2