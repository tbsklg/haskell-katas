module Kyu6.HandSpec where

import Test.Hspec
import Kyu6.Hand

spec :: Spec
spec = do
  it "handles a few fixed cases " $ do
    getParticipants 0 `shouldBe` 0
    getParticipants 1 `shouldBe` 2
    getParticipants 3 `shouldBe` 3
    getParticipants 6 `shouldBe` 4

-- the following line is optional for 8.2
main = hspec spec

