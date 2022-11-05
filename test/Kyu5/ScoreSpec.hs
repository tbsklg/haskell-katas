module Kyu5.ScoreSpec where

import Kyu5.Score
import Test.Hspec (Spec, describe, it, shouldBe)

spec :: Spec
spec = do
  it "should value this as worthless" $ do
    score [2, 3, 4, 6, 2] `shouldBe` 0

  it "should value this triplet correctly" $ do
    score [4, 4, 4, 3, 3] `shouldBe` 400

  it "should value this mixed set correctly" $ do
    score [2, 4, 4, 5, 4] `shouldBe` 450
    score [1, 1, 1, 3, 1] `shouldBe` 1100
