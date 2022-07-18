module Kyu7.SF4Spec where

import Test.Hspec
import Test.QuickCheck
import Kyu7.SF4

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the call cost" $ do
    phoneCall 3 1 2 20  `shouldBe`  14
    phoneCall 2 2 1 2   `shouldBe`  1
    phoneCall 10 1 2 22 `shouldBe`  11
    phoneCall 2 2 1 24  `shouldBe`  14
    phoneCall 1 2 1 6   `shouldBe`  3  
    
main = hspec spec
