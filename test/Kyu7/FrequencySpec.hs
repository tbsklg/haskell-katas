module Kyu7.FrequencySpec where

import Kyu7.Frequency (mostFrequentItemCount)
import Test.Hspec

spec :: Spec
spec = do
  describe "mostFrequentItemCount" $ do
    it "works for some examples" $ do
      mostFrequentItemCount [3, -1, -1] `shouldBe` 2
      mostFrequentItemCount [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3] `shouldBe` 5
      mostFrequentItemCount [] `shouldBe` 0
      mostFrequentItemCount [9] `shouldBe` 1
