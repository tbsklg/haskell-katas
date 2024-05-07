module Kyu5.BestTravelSpec (spec, main) where

import Kyu5.BestTravel (chooseBestSum)
import Test.Hspec
import Text.Printf (printf)

testSumOfK :: Int -> Int -> [Int] -> Maybe Int -> Spec
testSumOfK t k ls s =
  it (printf "should return chooseBestSum where limit: %d towns: %d distances: %s " t k (show ls)) $
    chooseBestSum t k ls `shouldBe` s

main = hspec spec

spec = do
  describe "Basic Tests" $ do
    let ts = [50, 55, 56, 57, 58]
    testSumOfK 163 3 ts (Just 163)
    let ts = [50]
    testSumOfK 163 3 ts Nothing
    let ts = [91, 74, 73, 85, 73, 81, 87]
    testSumOfK 230 3 ts (Just 228)
    testSumOfK 331 2 ts (Just 178)
    testSumOfK 331 4 ts (Just 331)
