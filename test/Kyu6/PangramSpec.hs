module Kyu6.PangramSpec where

import Kyu6.Pangram (isPangram)
import Test.Hspec

spec :: Spec
spec = do
  describe "isPangram" $ do
    it "should work for some examples" $ do
      isPangram "The quick brown fox jumps over the lazy dog." `shouldBe` True
      isPangram "Pack my box with five dozen liquor jugs." `shouldBe` True
      isPangram "Not every sentence is a a pangram. An example" `shouldBe` False
