module Kyu7.AllNonConsecutiveSpec (spec) where

import Kyu7.AllNonConsecutive (allNonConsecutive)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    allNonConsecutive [1, 2, 3, 4, 6, 7, 8, 10] `shouldBe` [(4, 6), (7, 10)]
