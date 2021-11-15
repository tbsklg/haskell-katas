module Kyu7.ShortestDistanceSpec where

import Test.Hspec
import Kyu7.ShortestDistance (shortestDistance)

epsilon = 1e-9

approximates :: Double -> Double -> Bool
actual `approximates` 0 = abs actual < epsilon
actual `approximates` expected = abs (expected-actual) < epsilon * abs expected

shouldApproximatelyBe :: Double -> Double -> Expectation
actual `shouldApproximatelyBe` expected = actual `shouldSatisfy` (`approximates` expected)


spec :: Spec
spec = do
  it "Example Tests" $ do
    shortestDistance 1 2 3 `shouldApproximatelyBe` 4.242640687
    shortestDistance 1 1 1 `shouldApproximatelyBe` 2.236067978
    shortestDistance 134 191.5 45.5 `shouldApproximatelyBe` 262.4738082