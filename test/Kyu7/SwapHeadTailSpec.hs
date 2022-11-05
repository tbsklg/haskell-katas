module Kyu7.SwapHeadTailSpec where

import Kyu7.SwapHeadTail
import Test.Hspec

spec :: Spec
spec = do
  describe "Swap head and tail" $ do
    it "Basic tests" $ do
      swapHeadAndTail [1, 2, 3, 4, 5] `shouldBe` [4, 5, 3, 1, 2]
      swapHeadAndTail [-1, 2] `shouldBe` [2, -1]
      swapHeadAndTail [1, 2, -3, 4, 5, 6, -7, 8] `shouldBe` [5, 6, -7, 8, 1, 2, -3, 4]
