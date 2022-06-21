module Kyu7.MakeAcronymSpec where

import Kyu7.MakeAcronym
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The toAcronym function" $ do
    it "should work for some examples" $ do
      toAcronym "Code Wars" `shouldBe` "CW"
      toAcronym "Water Closet" `shouldBe` "WC"      
      toAcronym "Portable Network Graphics" `shouldBe` "PNG"
