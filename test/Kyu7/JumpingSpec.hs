module Kyu7.JumpingSpec where

import Kyu7.Jumping
import Test.Hspec

spec :: Spec
spec = do
  it "finds the jumps" $ do
    jumpingNumber 1 `shouldBe` "Jumping!!"
    jumpingNumber 7 `shouldBe` "Jumping!!"
    jumpingNumber 9 `shouldBe` "Jumping!!"
    jumpingNumber 23 `shouldBe` "Jumping!!"
    jumpingNumber 32 `shouldBe` "Jumping!!"
    jumpingNumber 79 `shouldBe` "Not!!"
    jumpingNumber 98 `shouldBe` "Jumping!!"
    jumpingNumber 8987 `shouldBe` "Jumping!!"
    jumpingNumber 4343456 `shouldBe` "Jumping!!"
    jumpingNumber 98789876 `shouldBe` "Jumping!!"
