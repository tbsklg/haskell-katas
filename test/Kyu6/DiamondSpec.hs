module Kyu6.DiamondSpec where

import Kyu6.Diamond
import Test.Hspec

spec :: Spec
spec = do
  it "works on a few fixed cases" $ do
    diamond 'C' `shouldBe` "  A  \n B B \nC   C\n B B \n  A  "
    diamond 'D' `shouldBe` "   A   \n  B B  \n C   C \nD     D\n C   C \n  B B  \n   A   "

  it "should calculate middle line $ do" $ do
    line 'A' 'C' `shouldBe` "  A  "
    line 'A' 'D' `shouldBe` "   A   "
    line 'B' 'D' `shouldBe` "  B B  "
    line 'C' 'C' `shouldBe` "C   C" 
    line 'D' 'D' `shouldBe` "D     D"
    line 'E' 'E' `shouldBe` "E       E"

  it "should calculate other lines $ do" $ do
    line 'B' 'C' `shouldBe` " B B "
    line 'B' 'D' `shouldBe` "  B B  "
    line 'B' 'E' `shouldBe` "   B B   "
  
  it "should calculate middle spaces" $ do
    middleSpaces 'A' `shouldBe` []
    middleSpaces 'B' `shouldBe` " "
    middleSpaces 'C' `shouldBe` "   "
    middleSpaces 'D' `shouldBe` "     "
  
  it "should mirror" $ do
    mirror "A" `shouldBe` "A"
    mirror "AB" `shouldBe` "ABA"
    mirror "  A  " `shouldBe` "  A   A  "
