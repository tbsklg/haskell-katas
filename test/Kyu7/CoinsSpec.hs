module Kyu7.CoinsSpec where

import Kyu7.Coins (adjust)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "adjust" $ do
    it "should work for some examples" $ do
      adjust 3 0    `shouldBe` 0
      adjust 3 1    `shouldBe` 3
      adjust 3 (-2) `shouldBe` 0
      adjust 3 (-4) `shouldBe` (-3)
      adjust 3 3    `shouldBe` 3
      adjust 3 6    `shouldBe` 6
      adjust 3 7    `shouldBe` 9
    
    prop "returns only values divisible by the first argument" $ \(Positive b) n ->
      adjust b n `shouldSatisfy` (0 ==) . flip rem b
    
    prop "returns only positive values on positive prices" $ \(Positive b) (Positive n) ->
      adjust b n `shouldSatisfy` (> 0)
    
    prop "returns only nonpositive values on nonpositive prices" $ \(Positive b) ->
      forAll (fmap (negate . getPositive) arbitrary) $ \n->
        adjust b n `shouldSatisfy` (<= 0)
        
    prop "returns only larger or equal prices" $ \(Positive b) n ->
      adjust b n `shouldSatisfy` (>= n)
      
    prop "returns prices that differ at most 'coin' from the original one" $ \(Positive b) n ->
      adjust b n `shouldSatisfy` ((b >) .  abs . subtract n)
