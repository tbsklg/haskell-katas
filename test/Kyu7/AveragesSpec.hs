module Kyu7.AveragesSpec (spec) where

import Test.Hspec
import Kyu7.Averages (averages)

main = hspec spec
spec = do
  describe "Example Tests" $ 
    it "should work with example tests" $ do
      averages (Just [2, 2, 2, 2, 2])   `shouldBe` [2.0, 2.0, 2.0, 2.0]
      averages (Just [2, -2, 2, -2, 2]) `shouldBe` [0.0, 0.0, 0.0, 0.0]
      averages (Just [1, 3, 5, 1, -10]) `shouldBe` [2.0, 4.0, 3.0, -4.5]
