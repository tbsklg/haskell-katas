module Kyu6.BuyCarSpec (spec, main) where

import Kyu6.BuyCar
import Test.Hspec

main = hspec spec
spec = do
  describe "nbMonths" $ do
    it "1st series" $ do
      nbMonths 2000 8000 1000 1.5 `shouldBe` [6, 766]
      nbMonths 12000 8000 1000 1.5 `shouldBe` [0, 4000]
