module Kyu7.FilterSpec where

import Kyu7.Filter (filterString)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "filterString" $ do
    it "works for some examples" $ do
      filterString "123" `shouldBe` 123
      filterString "a1b2c3" `shouldBe` 123
      filterString "aa1bb2cc3dd" `shouldBe` 123
