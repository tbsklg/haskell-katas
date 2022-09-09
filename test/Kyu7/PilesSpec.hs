module Kyu7.PilesSpec where

import Kyu7.Piles (fourPiles)
import Test.Hspec

spec :: Spec
spec = do
  describe "Sample tests" $ do
    it "Should work" $ do
      fourPiles 48 3 `shouldBe` Just (12, 6, 27, 3)
      fourPiles 100 4 `shouldBe` Just (20, 12, 64, 4)
    it "Should return []" $ do
      fourPiles 25 4 `shouldBe` Nothing
      fourPiles 24 4 `shouldBe` Nothing
      fourPiles 9760 2 `shouldBe` Nothing
