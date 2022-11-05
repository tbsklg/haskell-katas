module Kyu7.ExtendedWeekendsSpec where

import Kyu7.ExtendedWeekends
import Test.Hspec

spec = do
  describe "Extended Weekends" $ do
    it "Basic tests" $ do
      solve 2016 2020 `shouldBe` ("Jan", "May", 5)
      solve 1900 1950 `shouldBe` ("Mar", "Dec", 51)
      solve 1800 2500 `shouldBe` ("Aug", "Oct", 702)
