module Kyu7.FrequencyFrenzySpec where

import Kyu7.FrequencyFrenzy (frequency)
import Test.Hspec
import Test.QuickCheck hiding (frequency)

data ToinCoss = Head | Tails | Edge deriving (Eq, Ord, Show)

spec :: Spec
spec = do
    describe "frequency" $ do
      it "should work on empty lists" $ do
        frequency ([] :: [()]) `shouldBe` []
      it "should work for the toin coss examples" $ do
        frequency [Head, Tails]              `shouldBe` [(Head, 1), (Tails, 1)]
        frequency [Head, Tails, Tails, Edge] `shouldBe` [(Head, 1), (Tails, 2), (Edge, 1)]
        frequency (replicate 3 Head)         `shouldBe` [(Head, 3)]
        frequency [Tails, Head, Tails, Head] `shouldBe` [(Head, 2), (Tails, 2)]
      it "should work for the other examples" $ do
        frequency [1,1,1,1] `shouldBe` [(1,4)]
        frequency [4,2,1,3] `shouldBe` [(1,1),(2,1),(3,1),(4,1)]
        frequency [1,2,2,3] `shouldBe` [(1,1),(2,2),(3,1)]
      it "should work for replicated elements" $ do
        property $ 
          forAll (elements [Head, Tails, Edge]) $ \x ->
          forAll (arbitrary `suchThat` (>0)) $ \l ->
            frequency (replicate l x) `shouldBe` [(x,l)]
