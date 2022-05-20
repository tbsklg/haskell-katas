module Kyu7.BalancedSpec where

import Test.Hspec
import Kyu7.Balanced

spec :: Spec
spec = do
    describe "checks for balanced numbers" $ do
        it "a few fixed cases" $ do
          balancedNum 7         `shouldBe` "Balanced"
          balancedNum 959       `shouldBe` "Balanced"
          balancedNum 13        `shouldBe` "Balanced"
          balancedNum 432       `shouldBe` "Not Balanced"
          balancedNum 424       `shouldBe` "Balanced"
          balancedNum 1024      `shouldBe` "Not Balanced"
          balancedNum 66545     `shouldBe` "Not Balanced"
          balancedNum 295591    `shouldBe` "Not Balanced"
          balancedNum 1230987   `shouldBe` "Not Balanced"
          balancedNum 56239814  `shouldBe` "Balanced"
