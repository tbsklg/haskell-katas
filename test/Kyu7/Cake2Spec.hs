module Kyu7.Cake2Spec where

import Test.Hspec
import Kyu7.Cake2

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    cakeSlice 0 `shouldBe` 1
    cakeSlice 1 `shouldBe` 2
    cakeSlice 2 `shouldBe` 4
    cakeSlice 3 `shouldBe` 7
    cakeSlice 10 `shouldBe` 56
    
-- the following line is optional for 8.2
main = hspec spec
