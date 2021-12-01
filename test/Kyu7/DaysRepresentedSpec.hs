module Kyu7.DaysRepresentedSpec where

import Test.Hspec
import Kyu7.DaysRepresented (daysRepresented)

spec :: Spec
spec = do
  describe "Simple Test #1" $ do
    it " [(10,15), (25,35)] " $ do
      daysRepresented [(10, 15), (25, 35)] `shouldBe` 17
  describe "Simple Test #2" $ do
    it " [(2,8), (220,229),(10,16)] " $ do
      daysRepresented [(2, 8), (220, 229), (10, 16)] `shouldBe` 24
