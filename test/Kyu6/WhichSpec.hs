module Kyu6.WhichSpec where

import Kyu6.Which (inArray)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "inArray" $ do
    it "should find the overlapping words" $
      let a1 = ["arp", "live", "strong"]
          a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
       in inArray a1 a2 `shouldBe` ["arp", "live", "strong"]

    it "should return the empty list if there's no overlapping" $
      let a1 = ["tarp", "mice", "bull"]
          a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
       in inArray a1 a2 `shouldBe` []

    it "should remove duplicates" $
      let a1 = ["duplicates", "duplicates"]
          a2 = a1
       in inArray a1 a2 `shouldBe` ["duplicates"]

    it "should return sorted elements" $
      let a1 = map return ['z', 'y' .. 'a']
          a2 = a1
       in inArray a1 a2 `shouldBe` map return ['a' .. 'z']

    it "should return the empty list if either list is empty" $
      property $ \xs ->
        (inArray [] xs `shouldBe` []) .&. (inArray xs [] `shouldBe` [])
