module Kyu7.SimpleStringDivIISpec where

import Kyu7.SimpleStringDivII
import Test.Hspec

spec = do
  describe "Simple string division II" $ do
    it "Basic tests" $ do
      solve "1 2 36 4 8" 2 `shouldBe` 16
      solve "1 2 36 4 8" 3 `shouldBe` 8
      solve "1 2 36 4 8" 4 `shouldBe` 11
      solve "1 2 36 4 8" 8 `shouldBe` 4
