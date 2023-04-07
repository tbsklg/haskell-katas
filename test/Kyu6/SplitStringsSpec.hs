module Kyu6.SplitStringsSpec where
import Kyu6.SplitStrings (solution)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "solution" $ do
    it "gives the correct result for \"abc\"" $
      solution "abc" `shouldBe` ["ab", "c_"]
    it "gives the correct result for \"abcdef\"" $
      solution "abcdef" `shouldBe` ["ab", "cd", "ef"]

