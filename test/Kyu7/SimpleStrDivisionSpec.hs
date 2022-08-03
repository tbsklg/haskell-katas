module Kyu7.SimpleStrDivisionSpec where

import Kyu7.SimpleStrDivision
import Test.Hspec

spec = do
  describe "Simple string division" $ do
    it "Basic tests" $ do
      solve "123" 1 `shouldBe` 23
      solve "1234" 1 `shouldBe` 234      
      solve "4321" 1 `shouldBe` 432      
      solve "1234" 2 `shouldBe` 34
      solve "1234" 3 `shouldBe` 4
      solve "69217489372" 8 `shouldBe` 937
