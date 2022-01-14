module Kyu7.Divisors2Spec where

import Kyu7.Divisors2 (divisors)
import Test.Hspec ( describe, it, shouldBe, Spec )

spec :: Spec
spec = do
  describe "divisors" $ do
    it "should work for simple examples" $ do
      divisors 3   `shouldBe` Left "3 is prime"
      divisors 4   `shouldBe` Right [2]
      divisors 13  `shouldBe` Left "13 is prime"
      divisors 15  `shouldBe` Right [3,5]
      divisors 24  `shouldBe` Right [2,3,4,6,8,12]
      divisors 29  `shouldBe` Left "29 is prime"
      divisors 253 `shouldBe` Right [11,23]