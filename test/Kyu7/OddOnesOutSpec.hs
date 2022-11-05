module Kyu7.OddOnesOutSpec (spec) where

import Kyu7.OddOnesOut (oddOnesOut)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    oddOnesOut [1, 2, 3, 1, 3, 3] `shouldBe` [1, 1]
    oddOnesOut [75, 68, 75, 47, 68] `shouldBe` [75, 68, 75, 68]
    oddOnesOut [42, 72, 32, 4, 94, 82, 67, 67] `shouldBe` [67, 67]
    oddOnesOut [100, 100, 5, 5, 100, 50, 68, 50, 68, 50, 68, 5, 100] `shouldBe` [100, 100, 100, 100]
    oddOnesOut [82, 86, 71, 58, 44, 79, 50, 44, 79, 67, 82, 82, 55, 50] `shouldBe` [44, 79, 50, 44, 79, 50]
