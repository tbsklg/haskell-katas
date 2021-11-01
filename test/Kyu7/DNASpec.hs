module Kyu7.DNASpec where

import Kyu7.DNA (dnaStrand, Base(..))

import Test.QuickCheck
import Test.Hspec

instance Arbitrary Base where
    arbitrary = elements [A,T,G,C]

spec :: Spec
spec = do
  describe "dnaStrand" $ do
    it "should work for some examples" $ do
      dnaStrand []        `shouldBe` []
      dnaStrand [A,T,G,C] `shouldBe` [T,A,C,G]
      dnaStrand [G,T,A,T] `shouldBe` [C,A,T,A]
      dnaStrand [A,A,A,A] `shouldBe` [T,T,T,T]
    
    it "should not change the length" $ property $ \xs ->
      dnaStrand xs `shouldSatisfy` (length xs ==) . length