module Kyu6.JoggersSpec where

import Kyu6.Joggers (nbrOfLaps)
import Test.Hspec

spec :: Spec
spec = do
  describe "nbrOfLaps" $ do
    it "should work for the examples" $ do
      nbrOfLaps 5 3 `shouldBe` (3, 5)
      nbrOfLaps 4 6 `shouldBe` (3, 2)
