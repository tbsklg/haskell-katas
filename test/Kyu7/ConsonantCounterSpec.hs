module Kyu7.ConsonantCounterSpec (spec) where

import Kyu7.ConsonantCounter (consonantCount)
import Test.Hspec

spec :: Spec
spec = do
  describe "consonantCount" $ do
    it "works for some examples" $ do
      consonantCount "" `shouldBe` 0
      consonantCount "aaaaa" `shouldBe` 0
      consonantCount "Bbbbb" `shouldBe` 5
      consonantCount "helLo wOrld" `shouldBe` 7
      consonantCount "h^$&^#$&^elLo world" `shouldBe` 7
      consonantCount "helLo wtuorlI" `shouldBe` 7
      consonantCount "0123456789" `shouldBe` 0
      consonantCount "012345_Cb" `shouldBe` 2
