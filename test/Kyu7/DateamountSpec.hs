module Kyu7.DateamountSpec where

import Kyu7.Dateamount (dateNbDays)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testDate :: Double -> Double -> Double -> String -> Spec
testDate a0 a p u =
  it (printf "should return dateNbDays for a0 : %f a : %f p : %f " a0 a p) $
    dateNbDays a0 a p `shouldBe` u

spec :: Spec
spec = do
  describe "dateNbDays" $ do
    testDate 4281 5087 2 "2024-07-03"
    testDate 4620 5188 2 "2021-09-19"
    testDate 9999 11427 6 "2018-03-13"
    testDate 3525 4822 3 "2026-04-18"
    testDate 5923 6465 6 "2017-06-10"
    testDate 4254 4761 8 "2017-05-22"
    testDate 1244 2566 4 "2033-11-04"
    testDate 6328 7517 5 "2019-05-25"
    testDate 2920 3834 2 "2029-06-03"
    testDate 7792 8987 4 "2019-07-09"
