module Kyu7.SimpleReversalSpec where

import Kyu7.SimpleReversal
import Test.Hspec

spec :: Spec
spec = do
  describe "Simple string reversal" $ do
    it "Basic tests" $ do
      solve "codewars" `shouldBe` "srawedoc"
      solve "your code" `shouldBe` "edoc ruoy"
      solve "your code rocks" `shouldBe` "skco redo cruoy"
      solve "i love codewars" `shouldBe` "s rawe docevoli"
