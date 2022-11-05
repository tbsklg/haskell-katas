module Kyu7.RotationsSpec (spec, main) where

import Kyu7.Rotations
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testRot :: String -> [String] -> Bool -> Spec
testRot strng arr s =
  it (printf "should return containAllRots for strng arr : %s %s \n" strng (show arr)) $
    containAllRots strng arr `shouldBe` s

main = hspec spec

spec = do
  describe "containAllRots" $ do
    testRot "bsjq" ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"] True
    testRot "" [] True
    testRot "" ["bsjq", "qbsj"] True
    testRot "XjYABhR" ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"] False
