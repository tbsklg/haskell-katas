module Kyu7.AnimalCalculatorSpec where

import Test.Hspec
import Kyu7.AnimalCalculator 

spec :: Spec
spec = do
    describe "Sample tests" $ do
        it "1 year" $ do
            (solution 1) `shouldBe` ([1,15,15] :: [Int])
        it "2 years" $ do
            (solution 2) `shouldBe` ([2,24,24] :: [Int])
        it "10 years" $ do  
            (solution 10) `shouldBe` ([10,56,64] :: [Int])
