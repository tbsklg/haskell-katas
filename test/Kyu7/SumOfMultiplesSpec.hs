module Kyu7.SumOfMultiplesSpec where
import Kyu7.SumOfMultiples
import Test.Hspec

spec :: Spec
spec = do
  describe "SumOfMultiples tests" $ do
    it "Basic tests" $ do
      findSum 5 `shouldBe` 8
      findSum 10 `shouldBe` 33
      findSum 100 `shouldBe` 2418
      findSum 1000 `shouldBe` 234168