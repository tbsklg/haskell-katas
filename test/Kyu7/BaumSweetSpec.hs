module Kyu7.BaumSweetSpec (spec) where

import Kyu7.BaumSweet (baumSweet)
import Test.Hspec

spec :: Spec
spec = do
  describe "sequence" $ do
    it "20 elements" $ take 20 baumSweet `shouldBe` [1,1,0,1,1,0,0,1,0,1,0,0,1,0,0,1,1,0,0,1]
