module Kyu7.HotelSpec where

import Test.Hspec
import Kyu7.Hotel

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    groupSize 1  6 `shouldBe` 3
    groupSize 3  10 `shouldBe` 5
    groupSize 3  14 `shouldBe` 6
    groupSize 10  1000 `shouldBe` 46
    groupSize 1  1000 `shouldBe` 45
    groupSize 5  4 `shouldBe` 5
    groupSize 5  7 `shouldBe` 6
    groupSize 10000  1000000000000000 `shouldBe` 44721361
    groupSize 2  20000000000000 `shouldBe` 6324555
    groupSize 10  900000000000000000 `shouldBe` 1341640786
    groupSize 34545  565 `shouldBe` 34545
    groupSize 234234  6577 `shouldBe` 234234
    groupSize 10  10 `shouldBe` 10
    
-- the following line is optional for 8.2
main = hspec spec
