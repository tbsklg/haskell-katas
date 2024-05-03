module Kyu5.IPv4Spec where

import Kyu5.IPv4 (word32ToIP)
import Test.Hspec

spec :: Spec
spec = do
  describe "int32ToIP" $ do
    it "should work for the examples" $ do
      word32ToIP 2154959208 `shouldBe` "128.114.17.104"
      word32ToIP 0 `shouldBe` "0.0.0.0"
      word32ToIP 2149583361 `shouldBe` "128.32.10.1"
