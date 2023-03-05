module Kyu6.SwapCaseUsingNSpec (spec) where

import Kyu6.SwapCaseUsingN (swap)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "testing for \"Hello World!\", 11" $ do
      swap "Hello world!" 11 `shouldBe` "heLLO wORLd!"
    it "testing for \"the quick broWn fox leapt over the fence\", 9" $ do
      swap "the quick broWn fox leapt over the fence" 9 `shouldBe` "The QUicK BrowN foX LeaPT ovER thE FenCE"
    it "testing for \"eVerybody likes ice cReam\", 85" $ do
      swap "eVerybody likes ice cReam" 85 `shouldBe` "EVErYbODy LiKeS IcE creAM"
    it "testing for \"gOOd MOrniNg\", 7864" $ do
      swap "gOOd MOrniNg" 7864 `shouldBe` "GooD MorNIng"
    it "testing for \"how are you today?\", 12345" $ do
      swap "how are you today?" 12345 `shouldBe` "HOw are yoU TOdaY?"
    it "edge cases n = 0" $ do
      swap "the lord of the rings" 0 `shouldBe` "the lord of the rings"
    it "edge cases s is empty" $ do
      swap "" 11345 `shouldBe` ""