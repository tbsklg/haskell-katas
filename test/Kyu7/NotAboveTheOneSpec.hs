module Kyu7.NotAboveTheOneSpec (spec) where

import Kyu7.NotAboveTheOne (binaryCleaner)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    binaryCleaner [0, 1, 2, 1, 0, 2, 1, 1, 1, 0, 4, 5, 6, 2, 1, 1, 0] `shouldBe` ([0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0], [2, 5, 10, 11, 12, 13])
    binaryCleaner [0, 1, 1, 2, 0] `shouldBe` ([0, 1, 1, 0], [3])
    binaryCleaner [2, 2, 0] `shouldBe` ([0], [0, 1])
    binaryCleaner [0, 1, 2, 1, 0, 2, 1, 1] `shouldBe` ([0, 1, 1, 0, 1, 1], [2, 5])
    binaryCleaner [1] `shouldBe` ([1], [])
