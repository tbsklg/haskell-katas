module Kyu6.ModSysSpec (spec) where

import Kyu6.ModSys (fromNb2Str)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fromNb2Str 779 [8, 7, 5, 3] `shouldBe` "-3--2--4--2-"
    fromNb2Str 15 [8, 6, 5, 3] `shouldBe` "Not applicable"
