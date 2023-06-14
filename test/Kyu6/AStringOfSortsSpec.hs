module Kyu6.AStringOfSortsSpec (spec) where

import Kyu6.AStringOfSorts (sortString)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sortString "foos" "of" `shouldBe` "oofs"
    sortString "string" "gnirts" `shouldBe` "gnirts"
    sortString "banana" "abn" `shouldBe` "aaabnn"
    sortString "bungholio" "aacbuoldiiaoh" `shouldBe` "buoolihng"
