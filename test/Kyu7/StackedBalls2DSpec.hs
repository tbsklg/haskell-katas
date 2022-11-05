module Kyu7.StackedBalls2DSpec (spec) where

import Codewars (shouldBeApprox)
import Control.Monad (when)
import Kyu7.StackedBalls2D (stack)
import Test.Hspec

spec :: Spec
spec = do
  it "Example tests" $ do
    stack 1 `shouldBeFuzzy` 1
    stack 2 `shouldBeFuzzy` 1.866

epsilon :: (Fractional a) => a
epsilon = 1e-3

shouldBeFuzzy :: (Eq a, Ord a, Show a, Fractional a) => a -> a -> Expectation
shouldBeFuzzy actual 0 = when (abs actual > epsilon) $ expectationFailure $ "Expected actual value " ++ show actual ++ " to approximately equal expected value 0 (accepted relative error: " ++ show epsilon ++ ")"
shouldBeFuzzy actual expected = when (abs (actual - expected) > epsilon * expected) $ expectationFailure $ "Expected actual value " ++ show actual ++ " to approximately equal expected value " ++ show expected ++ " (accepted relative error: " ++ show epsilon ++ ")"
