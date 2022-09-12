module Kyu7.NumberMagicSpec where

import Kyu7.NumberMagic (next)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "next" $ do
    it "works for some examples" $ do
      next 12         `shouldBe` Just 15           
      next 13         `shouldBe` Just 15    
      next 99         `shouldBe` Just 105    
      next 999999     `shouldBe` Just 1023459    
      next 9999999999 `shouldBe` Nothing  
    
    prop "returns Nothing on too large inputs" $ 
      forAll (choose (10 ^ 10, 10 ^ 100)) $ \n ->
        next n `shouldBe` Nothing
    
    prop "returns a number that's odd" $ \(Positive n) ->
      next n `shouldSatisfy` maybe True odd
    
    prop "returns a number that's divisible by three" $ \(Positive n) ->
      let divByThree n = n `rem` 3 == 0
      in next n `shouldSatisfy` maybe True divByThree
