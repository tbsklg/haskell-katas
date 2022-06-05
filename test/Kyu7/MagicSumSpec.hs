module Kyu7.MagicSumSpec where
import Kyu7.MagicSum
import Test.Hspec

spec :: Spec
spec =
  describe "Magic Sum" $ do
    it "Basic tests" $ do
      magicSum [3] `shouldBe` 3
      magicSum [3,13] `shouldBe` 16
      magicSum [30,34,330] `shouldBe` 0
      magicSum [3,12,5,8,30,13] `shouldBe` 16
      magicSum [] `shouldBe` 0 
