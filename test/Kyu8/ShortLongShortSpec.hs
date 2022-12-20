module Kyu8.ShortLongShortSpec where

import Kyu8.ShortLongShort
import Test.Hspec

spec :: Spec
spec = do
  describe "Tests" $ do
    it "Fixed tests" $ do
      (shortLongShort "a" "bb") `shouldBe` "abba"
      (shortLongShort "45" "1") `shouldBe` "1451"
      (shortLongShort "&&%&&" "") `shouldBe` "&&%&&"
      (shortLongShort "" "Happy Days!") `shouldBe` "Happy Days!"
      (shortLongShort "Yes" "Yes!") `shouldBe` "YesYes!Yes"
