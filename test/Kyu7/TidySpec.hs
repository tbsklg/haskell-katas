module Kyu7.TidySpec where

import Test.Hspec
import Kyu7.Tidy

spec :: Spec
spec = do
    describe "checks for tidy numbers" $ do
        it "a few fixed cases" $ do
          tidyNumber 12 `shouldBe` True
          tidyNumber 102 `shouldBe` False
          tidyNumber 9672 `shouldBe` False
          tidyNumber 2789 `shouldBe` True
          tidyNumber 2335 `shouldBe` True
          tidyNumber 9871 `shouldBe` False
