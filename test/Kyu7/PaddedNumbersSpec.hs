module Kyu7.PaddedNumbersSpec where
import Kyu7.PaddedNumbers (solution)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "padding numbers" $ do
    it "should work for some examples" $ do
      solution 1  `shouldBe` "Value is 00001"
      solution 5  `shouldBe` "Value is 00005"
      solution 10 `shouldBe` "Value is 00010"
    it "should return a string of length 14" $ do
      property $ forAll (arbitrary `suchThat` (\x -> x >= 0 && x < 100000)) $ \x ->
        solution x `shouldSatisfy` ((==14) . length)
