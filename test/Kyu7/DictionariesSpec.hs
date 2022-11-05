module Kyu7.DictionariesSpec where

import Kyu7.Dictionaries (sortDict)
import Test.Hspec

spec :: Spec
spec = do
  describe "sortDict" $ do
    it "should handle dictionaries with numbers as keys" $ do
      sortDict [(1, 3), (2, 2), (3, 1)] `shouldBe` [(1, 3), (2, 2), (3, 1)]
      sortDict [(3, 1), (2, 2), (1, 3)] `shouldBe` [(1, 3), (2, 2), (3, 1)]
      sortDict [(1, 2), (2, 4), (3, 6)] `shouldBe` [(3, 6), (2, 4), (1, 2)]

    it "should handle dictionaries with strings as keys" $ do
      sortDict [("a", 6), ("b", 2), ("c", 4)] `shouldBe` [("a", 6), ("c", 4), ("b", 2)]
