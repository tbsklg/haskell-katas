module Kyu7.WillSpec where

import Test.Hspec
import Test.QuickCheck
import Kyu7.Will

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    willYou True True True `shouldBe` False
    willYou True False True `shouldBe` True
    willYou False False False `shouldBe` False
    willYou False False True `shouldBe` True
    willYou False True False `shouldBe` False
    
-- the following line is optional for 8.2
main = hspec spec