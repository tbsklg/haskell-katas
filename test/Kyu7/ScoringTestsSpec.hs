module Kyu7.ScoringTestsSpec where

import Kyu7.ScoringTests
import Test.Hspec

spec :: Spec
spec = do
  it "Test Cases" $ do
    scoreTest [0, 0, 0, 0, 2, 1, 0] 2 0 1 `shouldBe` 9
    scoreTest [0, 1, 0, 0, 2, 1, 0, 2, 2, 1] 3 (-1) 2 `shouldBe` 3
    scoreTest [1, 1, 2, 0, 0, 1, 0, 0, 0, 2] 3 0 2 `shouldBe` 11
    scoreTest [0, 0, 0, 1, 2, 0, 1, 2, 2, 2] 1 0 2 `shouldBe` (-4)
    scoreTest [1, 1, 0, 2, 0, 0, 0, 1, 2, 1] 2 (-2) 1 `shouldBe` (-2)
