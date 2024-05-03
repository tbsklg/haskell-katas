module Kyu6.TheWheatSpec where

import Kyu6.TheWheat
import Test.HUnit (assertEqual)
import Test.Hspec

myTest ns exp = do
  assertEqual msg exp actual
  where
    actual = wheatFromChaff ns
    msg = "Failed at: " ++ showArgs
    showArgs = show ns

spec :: Spec
spec = do
  it "Check_Short_length_Vectors" $ do
    myTest [2, -4, 6, -6] [-6, -4, 6, 2]
  it "Check_Medium_length_Vectors" $ do
    myTest [16, 25, -48, -47, -37, 41, -2] [-2, -37, -48, -47, 25, 41, 16]
  it "Check_lengthy_Vectors" $ do
    myTest [-7, -35, -46, -22, 46, 43, -44, -14, 34, -5, -26] [-7, -35, -46, -22, -26, -5, -44, -14, 34, 43, 46]
  it "Check_Edge_Negatives" $ do
    myTest [-22, -20, -32] [-22, -20, -32]
  it "Check_Edge_Positives" $ do
    myTest [9, 9, 20] [9, 9, 20]

-- the following line is optional for 8.2
main = hspec spec
