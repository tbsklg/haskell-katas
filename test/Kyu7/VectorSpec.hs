module Kyu7.VectorSpec (spec) where

import Control.Monad (when)
import Kyu7.Vector (vectorLength)
import Test.Hspec
import Text.Printf

shouldBeFuzzy :: Double -> Double -> Expectation
shouldBeFuzzy act exp = when (abs (act - exp) >= 1e-7) $ expectationFailure msg
  where
    msg = "Expected value must be near " ++ show exp ++ " but got: " ++ show act

spec :: Spec
spec = do
  describe "finds the vector length" $ do
    it "fixed cases" $ do
      vectorLength [[0, 1], [0, 0]] `shouldBeFuzzy` 1.0
      vectorLength [[0, 3], [4, 0]] `shouldBeFuzzy` 5
      vectorLength [[1, -1], [1, -1]] `shouldBeFuzzy` 0
      vectorLength [[0, 0], [0, 0]] `shouldBeFuzzy` 0
      vectorLength [[0, 0.3], [0.4, 0]] `shouldBeFuzzy` 0.5
