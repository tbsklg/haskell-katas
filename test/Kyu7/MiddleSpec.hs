module Kyu7.MiddleSpec where

import Kyu7.Middle (gimme)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "gimme" $ do
    it "should work for some simple tests" $ do
      gimme (1,2,3) `shouldBe` 1
      gimme (2,1,3) `shouldBe` 0
      gimme (3,1,2) `shouldBe` 2
    
    it "should work for semi-random values" $ 
      let gimme_prop :: (Ord a, Num a) => a -> Positive a -> Positive a -> Expectation
          gimme_prop x (Positive y) (Positive z) = do
            gimme (x + y, x, x + y + z) `shouldBe` 0
            gimme (x, x + y, x + y + z) `shouldBe` 1
            gimme (x, x + y + z, x + y) `shouldBe` 2            
      in conjoin [ property (gimme_prop :: Int -> Positive Int -> Positive Int -> Expectation)
                 , property (gimme_prop :: Double -> Positive Double -> Positive Double -> Expectation)
                 ]