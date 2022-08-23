module Kyu7.Puzzles2Spec where

import Kyu7.Puzzles2 (testit)
import Test.Hspec

spec :: Spec
spec = do
  describe "testit" $ do
    it "returns correct answer for examples" $ do
      -- n ?
      testit 0 `shouldBe` 0
      testit 1 `shouldBe` 1
      -- n-1 ?
      testit 2 `shouldBe` 1
      testit 3 `shouldBe` 2
      -- round (fromIntegral n / 3) ?
      testit 4 `shouldBe` 1
      testit 5 `shouldBe` 2
      testit 6 `shouldBe` 2
      testit 7 `shouldBe` 3
      -- none of the above
      testit 8 `shouldBe` 1
      testit 9 `shouldBe` 2
      testit 10 `shouldBe` 2
      testit 100 `shouldBe` 3
      testit 1000 `shouldBe` 6
      testit 10000 `shouldBe` 5
