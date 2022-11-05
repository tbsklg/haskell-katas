module Kyu7.NewaverageSpec where

import Kyu7.Newaverage (newAvg)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testAvg :: [Double] -> Double -> Maybe Int -> Spec
testAvg arr navg u =
  it (printf "should return newAvg for arr: %s newAvg: %f " (show arr) navg) $
    newAvg arr navg `shouldBe` u

spec :: Spec
spec = do
  describe "newAvg" $ do
    testAvg [14, 30, 5, 7, 9, 11, 16] 90 (Just 628)
    testAvg [14, 30, 5, 7, 9, 11, 15] 92 (Just 645)
    testAvg [14, 30, 5, 7, 9, 11, 15] 2 Nothing
