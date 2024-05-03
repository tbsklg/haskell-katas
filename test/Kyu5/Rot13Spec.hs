module Kyu5.Rot13Spec where

import Kyu5.Rot13 (rot13)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "rot13" $ do
    it "test" $
      rot13 "test" `shouldBe` "grfg"
    it "Test" $
      rot13 "Test" `shouldBe` "Grfg"
