module Kyu5.MergeSpec where
import Kyu5.Merge (merge)
import Test.Hspec

spec :: Spec
spec = do
  describe "merge" $ do
    it "should work for the examples" $ do
      merge [1,2] [3]   `shouldBe` [1..3]
      merge [1,2] [3,4] `shouldBe` [1..4]
      merge [1] [2,3,4] `shouldBe` [1..4]
