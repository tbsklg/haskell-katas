module Kyu6.ConsonantValSpec where

import Kyu6.ConsonantVal
import Test.Hspec

spec :: Spec
spec = do
  describe "Consonant Value" $ do
    it "Basic tests" $ do
      solve "zodiac" `shouldBe` 26
      solve "chruschtschov" `shouldBe` 80
      solve "khrushchev" `shouldBe` 38
      solve "strength" `shouldBe` 57
      solve "catchphrase" `shouldBe` 73
      solve "twelfthstreet" `shouldBe` 103
      solve "mischtschenkoana" `shouldBe` 80
