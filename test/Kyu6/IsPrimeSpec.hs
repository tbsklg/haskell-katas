module Kyu6.IsPrimeSpec where
import Kyu6.IsPrime (isPrime)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec =
  describe "isPrime" $ do
    it "should work for some examples" $ do
      isPrime 0        `shouldBe` False
      isPrime 1        `shouldBe` False
      isPrime 2        `shouldBe` True
      isPrime 17       `shouldBe` True
      isPrime 23423527 `shouldBe` True
    it "should work for negative numbers" $ do
      forAll (choose (-1,-(2^32))) $ \x -> do
        isPrime x `shouldBe` False

