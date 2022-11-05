module Kyu7.DropcapsSpec where

import Kyu7.Dropcaps (dropCap)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "dropCap" $ do
    it "keeps small words" $ dropCap "of" `shouldBe` "of"
    it "caps longer words" $ dropCap "apple Banana" `shouldBe` "Apple Banana"
    it "keeps spaces" $ dropCap "multiple     spaces" `shouldBe` "Multiple     Spaces"
    it "keeps spaces at front" $ dropCap "   leading spaces" `shouldBe` "   Leading Spaces"
    it "keeps spaces at back" $ dropCap "trailing spaces    " `shouldBe` "Trailing Spaces    "
