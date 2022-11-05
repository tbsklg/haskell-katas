module Kyu7.IdenticalElementsSpec (spec) where

import Kyu7.IdenticalElements (duplicateElements)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "example tests" $ do
    duplicateElements [1, 2, 3, 4, 5] [1, 6, 7, 8, 9] `shouldBe` True
    duplicateElements [9, 8, 7] [8, 1, 3] `shouldBe` True
  it "property tests" $ do
    property $ \xs ys -> do
      duplicateElements xs [] `shouldBe` False
      duplicateElements [] ys `shouldBe` False
      duplicateElements xs ys `shouldBe` duplicateElements ys xs
  it "more property tests" $ do
    property $ \(NonEmpty xs) -> do
      duplicateElements xs xs `shouldBe` True
