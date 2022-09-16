module Kyu7.ArpeggioSpec where

import Kyu7.Arpeggio (arpeggio)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "arpeggio" $ do
    it "works for B" $
      arpeggio 'B' `shouldBe` Just "BDFB"
    
    it "works for Z" $
      arpeggio 'Z' `shouldBe` Nothing
    
    it "works for A" $
      arpeggio 'A' `shouldBe` Just "ACEA"
  
    it "works for c" $
      arpeggio 'c' `shouldBe` Nothing
