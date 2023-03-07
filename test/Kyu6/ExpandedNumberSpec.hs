module Kyu6.ExpandedNumberSpec where
import Test.Hspec
import Kyu6.ExpandedNumber

spec :: Spec
spec = do
  describe "Example Tests" $ do
    it "should work with example tests" $ do
      expandedForm 2 `shouldBe` "2"
      expandedForm 12 `shouldBe` "10 + 2"
      expandedForm 42 `shouldBe` "40 + 2"
      expandedForm 70304 `shouldBe` "70000 + 300 + 4"
      expandedForm 4982342 `shouldBe` "4000000 + 900000 + 80000 + 2000 + 300 + 40 + 2"
