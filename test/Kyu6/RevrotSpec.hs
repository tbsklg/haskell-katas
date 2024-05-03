module Kyu6.RevrotSpec where

import Kyu6.Revrot (revRot)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testRevRot :: [Char] -> Int -> [Char] -> Spec
testRevRot strng sz s =
  it (printf "should return revRot for s: %s n %d " strng sz) $
    revRot strng sz `shouldBe` s

spec :: Spec
spec = do
  describe "revRot" $ do
    testRevRot "1234" 0 ""
    testRevRot "" 5 ""
    testRevRot "1234" 5 ""
    testRevRot "733049910872815764" 5 "330479108928157"
