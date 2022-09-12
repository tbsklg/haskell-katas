module Kyu7.GeometricMeanSpec where

import Test.Hspec
import Kyu7.GeometricMean
import Test.QuickCheck
import Control.Monad (when)
import Text.Printf

shouldBeFuzzy :: Maybe Double -> Maybe Double -> Expectation

shouldBeFuzzy Nothing Nothing =
  when (False) $ expectationFailure msg
    where msg = "What's up?" 

shouldBeFuzzy Nothing  (Just exp) =
  expectationFailure msg
    where msg = "Expected value must be near " ++ show exp ++ " but got: Nothing" 

shouldBeFuzzy (Just act) Nothing = 
  expectationFailure msg
    where msg = "Expected value must be Nothing but got: " ++ show act

shouldBeFuzzy (Just act) (Just exp) =
  when (abs (act - exp)/act >= 1e-10) $ expectationFailure msg
    where msg = "Expected value must be near " ++ show exp ++ " but got: " ++ show act

testApprox :: [Integer] -> Maybe Double -> Spec
testApprox x u =
    it (printf "should return f for x: %s " (show x)) $
        geometricMean x `shouldBeFuzzy` u
        
arr1 = [2, 3, 4, 6]
arr2 = [2, 3, 4, 6, (-5)]
arr3 = [2, 3, 4, 6, (-5), (-4)]
arr4 = [2, 2, 3, 4, 10, 8, 1, 4, 6, 7, 2]
arr5 = [2, 2, 3, 4, 10, (-4), 8, 1, 4, 6, 7, 2]
arr6 = [2, 2, 3, 0, 4, 10, (-4), 8, 1, 4, 6, 7, 2]
arr7 = [2, 2, 3, (-5), 4, 10, (-4), 8, 1, 4, 6, 7, 2]

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    testApprox arr1 (Just 3.46410161514)
    testApprox arr2 (Just 3.46410161514)
    testApprox arr3 Nothing
    testApprox arr4 (Just 3.59348221822)
    testApprox arr5 (Just 3.59348221822)
    testApprox arr6 (Just 0)
    testApprox arr7 Nothing
    
-- the following line is optional for 8.2
main = hspec spec
