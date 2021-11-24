module Kyu7.NthRootSpec where

import Kyu7.NthRoot (root)
import Control.Monad (when)
import Test.Hspec 
import Test.QuickCheck

spec :: Spec
spec = do
  describe "nth root" $ do
    it "should work for some examples" $ do
      root   4 2 `shouldBeFuzzy` 2  
      root   8 3 `shouldBeFuzzy` 2
      root 256 4 `shouldBeFuzzy` 4
      root   9 2 `shouldBeFuzzy` 3
      
    it "should find the original number" $ do
      property $ \(Positive r) (Positive n) ->
        let x = r ^ (n `asTypeOf` (1 :: Int))
        in root x (fromIntegral n) `shouldBeFuzzy` r
  where
    shouldBeFuzzy :: Double -> Double -> Expectation 
    shouldBeFuzzy actual expected = 
      when (abs ((actual - expected) / max actual expected) >= 1e-14) $ do
        expectationFailure $ "Expected " ++ show expected ++ ", but got " ++ show actual
