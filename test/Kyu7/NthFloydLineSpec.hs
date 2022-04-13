module Kyu7.NthFloydLineSpec where

import Kyu7.NthFloydLine
import Test.Hspec

spec = do
  describe "Nth Floyd Line" $ do
    it "Basic tests" $ do
      nthFloyd 15 `shouldBe` 5
      nthFloyd 26 `shouldBe` 7
      nthFloyd 17 `shouldBe` 6
      nthFloyd 24 `shouldBe` 7
      nthFloyd 19 `shouldBe` 6
      nthFloyd 5 `shouldBe` 3
      nthFloyd 212 `shouldBe` 21
