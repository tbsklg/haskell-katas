module Kyu7.SlidingSpec where

import Test.Hspec
import Kyu7.Sliding

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    sliding [1,3,-1,-3,5,3,6,7]         3 `shouldBe` [3, 3, 5, 5, 6, 7]
    sliding [-7, -8, 7, 5, 7, 1, 6, 0]  4 `shouldBe` [7, 7, 7, 7, 7]
    sliding [7, 2, 4]                   2 `shouldBe` [7, 4]
    sliding [9, 11]                     2 `shouldBe` [11]
    sliding [9, 11, 12]                 1 `shouldBe` [9, 11, 12]
    sliding []                          50 `shouldBe` []
    sliding [-1,-2,-3]                  3 `shouldBe` [-1]
    sliding [-1,-2,-3]                  1 `shouldBe` [-1,-2,-3]
    
-- the following line is optional for 8.2
main = hspec spec
