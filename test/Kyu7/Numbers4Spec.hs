module Kyu7.Numbers4Spec where

import Kyu7.Numbers4 (twoCount)
import Test.Hspec

spec :: Spec
spec = do
  describe "twoCount" $ do
    it "works for some examples" $ do
      twoCount 24 `shouldBe` 3
      twoCount 17280 `shouldBe` 7
      twoCount 22222222222 `shouldBe` 1
      twoCount 256 `shouldBe` 8
      twoCount 1 `shouldBe` 0
      twoCount 2 `shouldBe` 1
      twoCount 256 `shouldBe` 8
      twoCount 482848428248882482 `shouldBe` 1
      twoCount 7 `shouldBe` 0
      twoCount 777777777 `shouldBe` 0
      twoCount 84934656 `shouldBe` 20
