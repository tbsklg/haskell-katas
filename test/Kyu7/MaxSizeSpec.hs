module Kyu7.MaxSizeSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.MaxSize
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "finds the n-max product" $ do
    it "for a few cases" $ do
      maxProduct [4, 3, 5] 2 `shouldBe` 20
      maxProduct [10, 8, 7, 9] 3 `shouldBe` 720
      maxProduct [8, 6, 4, 6] 3 `shouldBe` 288
      maxProduct [10, 2, 3, 8, 1, 10, 4] 5 `shouldBe` 9600
      maxProduct [13, 12, -27, -302, 25, 37, 133, 155, -14] 5 `shouldBe` 247895375
      maxProduct [-4, -27, -15, -6, -1] 2 `shouldBe` 4
      maxProduct [-17, -8, -102, -309] 2 `shouldBe` 136
      maxProduct [10, 3, -27, -1] 3 `shouldBe` -30
      maxProduct [14, 29, -28, 39, -16, -48] 4 `shouldBe` -253344
      maxProduct [1] 1 `shouldBe` 1

-- the following line is optional for 8.2
main = hspec spec
