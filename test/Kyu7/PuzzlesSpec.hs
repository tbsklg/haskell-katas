module Kyu7.PuzzlesSpec where

import Kyu7.Puzzles (testit)
import Test.Hspec

spec :: Spec
spec = do
  describe "testit" $ do
    it "might be upperase?" $ do
      testit "" `shouldBe` ""
      testit "a" `shouldBe` "A"
      testit "b" `shouldBe` "B"
      testit "a a" `shouldBe` "A A"
      testit "a b" `shouldBe` "A B"
      testit "a b c" `shouldBe` "A B C"
