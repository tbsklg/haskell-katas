module Kyu7.EveryPossibleSumSpec (spec) where

import Kyu7.EveryPossibleSum (digits)
import Test.Hspec

spec = do
  describe "Every possible sum of two digits" $ do
    it "Example tests" $ do
      digits 156 ?= [6, 7, 11]
      digits 81596 ?= [9, 13, 17, 14, 6, 10, 7, 14, 11, 15]
      digits 3852 ?= [11, 8, 5, 13, 10, 7]
      digits 3264128 ?= [5, 9, 7, 4, 5, 11, 8, 6, 3, 4, 10, 10, 7, 8, 14, 5, 6, 12, 3, 9, 10]
      digits 999999 ?= [18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18]

(?=) = shouldBe
