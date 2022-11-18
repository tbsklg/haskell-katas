module Kyu6.VolTankSpec where

import Kyu6.VolTank
import Test.Hspec
import Text.Printf (printf)

testVolTank :: Int -> Int -> Int -> Int -> Spec
testVolTank h d vt s =
  it (printf "should return tankvol %d %d %d" h d vt) $
    tankvol h d vt `shouldBe` s

spec :: Spec
spec = do
  describe "tankvol" $ do
    testVolTank 5 7 3848 2940
    testVolTank 2 7 3848 907
