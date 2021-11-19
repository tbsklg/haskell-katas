module Kyu7.BoiledEggsSpec (spec) where
import Kyu7.BoiledEggs (cookingTime)
import Test.Hspec

main = hspec spec
spec = do
  describe "cookingTime" $ do
    it "should work for some examples" $ do
      cookingTime  0 `shouldBe` 0
      cookingTime  5 `shouldBe` 5
      cookingTime  8 `shouldBe` 5
      cookingTime 10 `shouldBe` 10