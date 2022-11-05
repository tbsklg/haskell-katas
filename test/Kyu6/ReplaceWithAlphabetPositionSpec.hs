module Kyu6.ReplaceWithAlphabetPositionSpec (spec) where

import Kyu6.ReplaceWithAlphabetPosition (alphabetPosition)
import Test.Hspec
import Test.QuickCheck

spec = do
  it "works for some examples" $ do
    alphabetPosition "The sunset sets at twelve o' clock." `shouldBe` (unwords $ show <$> [20, 8, 5, 19, 21, 14, 19, 5, 20, 19, 5, 20, 19, 1, 20, 20, 23, 5, 12, 22, 5, 15, 3, 12, 15, 3, 11])
    alphabetPosition "The narwhal bacons at midnight." `shouldBe` (unwords $ show <$> [20, 8, 5, 14, 1, 18, 23, 8, 1, 12, 2, 1, 3, 15, 14, 19, 1, 20, 13, 9, 4, 14, 9, 7, 8, 20])

  it "returns an empty list if there aren't any letters" $ do
    forAll (listOf $ choose ('\NUL', '@')) $ \xs -> do
      alphabetPosition xs `shouldBe` []

  it "ignores non-latin characters" $ do
    forAll (listOf $ choose ('\DEL', maxBound)) $ \xs -> do
      alphabetPosition xs `shouldBe` []

  it "returns numbers between 1 and 26 (inclusive)" $ do
    property $ \xs -> do
      alphabetPosition xs `shouldSatisfy` all (\x -> 1 <= x && x <= 26) . map read . words
