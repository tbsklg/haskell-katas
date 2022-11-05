module Kyu6.NarcissisticSpec where

import Kyu6.Narcissistic (narcissistic)
import Test.Hspec

spec :: Spec
spec = do
  describe "narcissistic" $ do
    it "should work for some examples" $ do
      narcissistic 7 `shouldBe` True
      narcissistic 12 `shouldBe` False
      narcissistic 370 `shouldBe` True
      narcissistic 371 `shouldBe` True
      narcissistic 1634 `shouldBe` True
