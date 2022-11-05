module Kyu7.SequenceSumSpec where

import Kyu7.SequenceSum
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing sequenceSum" $
    it "Example Cases" $ do
      sequenceSum (2, 2, 2) `shouldBe` 2
      sequenceSum (2, 6, 2) `shouldBe` 12
      sequenceSum (1, 5, 1) `shouldBe` 15
      sequenceSum (1, 5, 3) `shouldBe` 5
