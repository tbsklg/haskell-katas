module Kyu5.GrannySpec where

import Kyu5.Granny
import Test.Hspec
import Text.Printf (printf)

testGranny :: [String] -> [(String, String)] -> [(String, Double)] -> Integer -> Spec
testGranny f fT tD d =
  it (printf "should return the distance %i" d) $
    tour f fT tD `shouldBe` d

spec :: Spec
spec = do
  describe "tour" $ do
    testGranny
      ["A1", "A2", "A3", "A4", "A5"]
      [("A1", "X1"), ("A2", "X2"), ("A3", "X3"), ("A4", "X4")]
      [("X1", 100.0), ("X2", 200.0), ("X3", 250.0), ("X4", 300.0)]
      889
