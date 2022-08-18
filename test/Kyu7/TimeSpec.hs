module Kyu7.TimeSpec where

-- import Approx
import Control.Monad (when)
import Kyu7.Time
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    calculateTime 1000 500 `shouldBeFuzzy` 2.6
    calculateTime 1500 500 `shouldBeFuzzy` 3.9
    calculateTime 2000 1000 `shouldBeFuzzy` 2.6
    calculateTime 5000 1000 `shouldBeFuzzy` 6.5
    calculateTime 1000 5000 `shouldBeFuzzy` 0.26

epsilon :: (Fractional a) => a
epsilon = 1e-6

shouldBeFuzzy :: (Eq a, Ord a, Show a, Fractional a) => a -> a -> Expectation
shouldBeFuzzy actual 0 = when (abs actual > epsilon) $ expectationFailure $ "Expected actual value " ++ show actual ++ " to approximately equal expected value 0 (accepted relative error: " ++ show epsilon ++ ")"
shouldBeFuzzy actual expected = when (abs (actual - expected) > epsilon * expected) $ expectationFailure $ "Expected actual value " ++ show actual ++ " to approximately equal expected value " ++ show expected ++ " (accepted relative error: " ++ show epsilon ++ ")"

-- the following line is optional for 8.2
main = hspec spec
