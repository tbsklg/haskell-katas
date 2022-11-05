module Kyu7.DivSpec where

import Kyu7.Div
import Test.Hspec

spec :: Spec
spec = do
  it "handles a few fixed cases " $ do
    divCon [I 9, I 3, C '7', C '3'] `shouldBe` 2
    divCon [C '5', C '0', I 9, I 3, I 2, I 1, C '9', I 6, I 7] `shouldBe` 14
    divCon [C '3', I 6, I 6, I 0, C '5', I 8, I 5, C '6', I 2, C '0'] `shouldBe` 13
    divCon [C '1', C '5', C '8', I 8, I 9, I 9, I 2, C '3'] `shouldBe` 11
    divCon [I 8, I 0, I 0, I 8, I 5, I 7, I 2, I 3, I 7, I 8, I 6, I 7] `shouldBe` 61

-- the following line is optional for 8.2
main = hspec spec
