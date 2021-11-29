module Kyu7.PowerOfTwoSpec where

import Kyu7.PowerOfTwo (isPowerOfTwo)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "isPowerOfTwo" $ do
    it "should work for some examples" $ do
      isPowerOfTwo       2 `shouldBe` True
      isPowerOfTwo       6 `shouldBe` False
      isPowerOfTwo       8 `shouldBe` True
      isPowerOfTwo    1024 `shouldBe` True
      isPowerOfTwo    1026 `shouldBe` False
    it "should work for simple random cases" $ do
      conjoin [
          property $ forAll (elements [0..10]) $ \n -> isPowerOfTwo (2^n) `shouldBe` True,
          property $ forAll (elements [0..10]) $ \n -> isPowerOfTwo (2^n + 2^(n+1)) `shouldBe` False
        ]
