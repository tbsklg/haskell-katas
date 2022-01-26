module Kyu7.RemoveConsecutiveDuplicateWordsSpec (spec) where

import Kyu7.RemoveConsecutiveDuplicateWords (remove)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    remove "alpha beta beta gamma gamma gamma delta alpha beta beta gamma gamma gamma delta"
      `shouldBe` "alpha beta gamma delta alpha beta gamma delta"
