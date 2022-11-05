module Kyu7.ThinkingAndTesting01Spec where

import Kyu7.ThinkingAndTesting01
import Test.Hspec

spec :: Spec
spec = do
  describe "testit" $ do
    -- a + b ?
    it "returns 1 for 0 1" $ testit 0 1 `shouldBe` 1
    it "returns 3 for 1 2" $ testit 1 2 `shouldBe` 3
    it "returns 30 for 10 20" $ testit 10 20 `shouldBe` 30
    -- a * b ?
    it "returns 1 for 1 1" $ testit 1 1 `shouldBe` 1
    it "returns 3 for 1 3" $ testit 1 3 `shouldBe` 3

-- try "Attempt" to find more...
