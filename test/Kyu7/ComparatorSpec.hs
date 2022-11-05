module Kyu7.ComparatorSpec (spec) where

import Kyu7.Comparator (matchList)
import Test.Hspec
import Test.QuickCheck

spec = do
  it "works for some examples" $ do
    matchList ["Erlang", "Javascript"] ["Go", "C++", "Haskell"] `shouldBe` 0
    matchList ["Haskell", "Javascript"] ["Go", "C++", "Haskell"] `shouldBe` 1
