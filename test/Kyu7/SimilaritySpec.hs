module Kyu7.SimilaritySpec where

import Kyu7.Similarity
import Test.Hspec

spec :: Spec
spec = do
  it "finds the similarity in two arrays" $ do
    similarity ([1, 2, 3], [1, 2, 3]) `shouldBe` 1
    similarity ([1, 2, 3], [4, 5, 6]) `shouldBe` 0
    similarity ([1, 2, 4, 6, 7], [2, 3, 4, 7]) `shouldBe` 0.5
    similarity ([1, 2, 6, 8, 9], [0, 1, 4, 5, 6, 8, 9]) `shouldBe` 0.5
    similarity ([1, 2, 3, 4, 7, 9], [1, 2, 3]) `shouldBe` 0.5
    similarity ([0, 1, 3, 4, 5, 6, 9, 14, 15, 16, 17, 18, 19], [1, 4, 10, 12, 13, 14, 15, 16]) `shouldBe` 0.3125
