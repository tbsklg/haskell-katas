module Kyu7.GeneratePairsSpec where
import Kyu7.GeneratePairs
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tets" $
    it "should work with example tests" $ do
      generatePairs 2 `shouldBe` [[0, 0], [0, 1], [0, 2], [1, 1], [1, 2], [2, 2]]
      generatePairs 0 `shouldBe` [[0, 0]]