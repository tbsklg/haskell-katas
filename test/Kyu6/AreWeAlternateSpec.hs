module Kyu6.AreWeAlternateSpec (spec, main) where

import Kyu6.AreWeAlternate (isAlt)
import Test.Hspec

main = hspec spec
spec = do
  describe "Are we alternate?" $ do
    it "example tests" $ do
      isAlt "amazon" `shouldBe` True
      isAlt "apple" `shouldBe` False
      isAlt "banana" `shouldBe` True
