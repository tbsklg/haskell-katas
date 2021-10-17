module Kyu7.ComfortableWordsSpec (spec) where

import Kyu7.ComfortableWords (comfortableWord)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    comfortableWord "yams" `shouldBe` True
    comfortableWord "test" `shouldBe` False
    comfortableWord "" `shouldBe` True
    comfortableWord "qpwoeirutyalskdjfhgnzmxmcmvmb" `shouldBe` True
