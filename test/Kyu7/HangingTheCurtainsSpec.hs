module Kyu7.HangingTheCurtainsSpec (spec) where

import Kyu7.HangingTheCurtains (numberOfHooks)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "integer cases" $ do
      numberOfHooks 225 45 `shouldBe` 9
      numberOfHooks 180 22 `shouldBe` 17
      numberOfHooks 100 35 `shouldBe` 5
      numberOfHooks 90 50 `shouldBe` 3
      numberOfHooks 245 9 `shouldBe` 33
      numberOfHooks 315 7 `shouldBe` 65
      numberOfHooks 405 5 `shouldBe` 129
    it "float cases" $ do
      numberOfHooks 100.5 25 `shouldBe` 9
      numberOfHooks 100 25.5 `shouldBe` 5
      numberOfHooks 185.5 15.5 `shouldBe` 17
      numberOfHooks 99.3 13.6 `shouldBe` 9
      numberOfHooks 247.12 9.17 `shouldBe` 33
      numberOfHooks 315.87 7.01 `shouldBe` 65
      numberOfHooks 405.75 5.45 `shouldBe` 129
    it "edge cases" $ do
      numberOfHooks 100 100 `shouldBe` 2
      numberOfHooks 25 100 `shouldBe` 2
