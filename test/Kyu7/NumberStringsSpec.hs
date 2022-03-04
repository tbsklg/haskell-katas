module Kyu7.NumberStringsSpec where

import Kyu7.NumberStrings
import Test.Hspec

spec :: Spec
spec = do
  describe "Numbers in strings" $ do
    it "Basic tests" $ do
      solve "gh12cdy695m1" `shouldBe` 695
      solve "2ti9iei7qhr5" `shouldBe` 9
      solve "vih61w8oohj5" `shouldBe` 61
      solve "f7g42g16hcu5" `shouldBe` 42
      solve "lu1j8qbbb85" `shouldBe` 85