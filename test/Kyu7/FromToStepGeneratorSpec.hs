module Kyu7.FromToStepGeneratorSpec where
import Kyu7.FromToStepGenerator
import Test.Hspec

spec :: Spec
spec = do
  describe "Tests:" $ do
    it "Test pack #1:" $ do
      generator 10 20 1 `shouldBe` [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20] 
      generator 20 10 1 `shouldBe` [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10]
      generator 10 20 0 `shouldBe` []
      generator 10 20 5 `shouldBe` [10, 15, 20]
      generator 0 1 1 `shouldBe` [0, 1]
      generator 10 20 7 `shouldBe` [10, 17]
