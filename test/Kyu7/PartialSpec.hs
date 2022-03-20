module Kyu7.PartialSpec where
import Kyu7.Partial (wordSearch)
import Test.Hspec

spec :: Spec
spec = do
  describe "wordSearch" $ do
    it "should work for some examples" $ do
      wordSearch "ab"   ["za", "ab", "abc", "zab", "zbc"] `shouldBe` Just ["ab", "abc", "zab"]
      wordSearch "aB"   ["za", "ab", "abc", "zab", "zbc"] `shouldBe` Just ["ab", "abc", "zab"]
      wordSearch "ab"   ["za", "aB", "Abc", "zAB", "zbc"] `shouldBe` Just ["aB", "Abc", "zAB"]
      wordSearch "abcd" ["za", "aB", "Abc", "zAB", "zbc"] `shouldBe` Nothing
      wordSearch "abcd" []                                `shouldBe` Nothing