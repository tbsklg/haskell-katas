module Kyu7.Product3Spec where

import Test.Hspec
import Test.QuickCheck
import Kyu7.Product3

spec :: Spec
spec = do
  it "finds the product" $ do
   product' [5, 4, 1, 3, 9] `shouldBe` Just 540
   product' [-2, 6, 7, 8] `shouldBe` Just (-672)
   product' [10] `shouldBe` Just 10
   product' [0, 2, 9, 7] `shouldBe` Just 0
   product' [] `shouldBe` Nothing
 
-- the following line is optional for 8.2
main = hspec spec
