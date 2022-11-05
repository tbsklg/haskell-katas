module Kyu7.CompareStringsSpec (spec) where

import Kyu7.CompareStrings
import Test.Hspec

main = hspec spec

spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      compare' (Just "AD") (Just "BC") `shouldBe` True
      compare' (Just "AD") (Just "DD") `shouldBe` False
      compare' (Just "gf") (Just "FG") `shouldBe` True
      compare' (Just "Ad") (Just "DD") `shouldBe` False
      compare' (Just "zz1") (Just "") `shouldBe` True
      compare' (Just "ZzZz") (Just "ffPFF") `shouldBe` True
      compare' (Just "kl") (Just "lz") `shouldBe` False
      compare' Nothing (Just "") `shouldBe` True
      compare' (Just "!!") (Just "7476") `shouldBe` True
      compare' (Just "##") (Just "1176") `shouldBe` True
      compare' (Just "a1") Nothing `shouldBe` True
      compare' Nothing (Just "a1") `shouldBe` True
