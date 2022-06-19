module Kyu7.PenultimateSpec where
import Kyu7.Penultimate
import Test.Hspec

spec :: Spec
spec = do
  describe "penultimate [1..10]" $ do
    it "should be 9" $ do
      penultimate [1..10] `shouldBe` 9
