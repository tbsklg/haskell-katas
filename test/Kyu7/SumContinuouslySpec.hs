module Kyu7.SumContinuouslySpec where
import Kyu7.SumContinuously

import Test.Hspec

spec :: Spec
spec = do
  it "Extended tests" $ do
    add [5,10,15,20,25,30,35,40] `shouldBe` [5, 15, 30, 50, 75, 105, 140, 180]
    add [6,12,18,24,30,36,42] `shouldBe` [6, 18, 36, 60, 90, 126, 168]
    add [7,14,21,28,35,42,49,56] `shouldBe` [7, 21, 42, 70, 105, 147, 196, 252]
    add [8,16,24,32,40,48,56,64] `shouldBe` [8, 24, 48, 80, 120, 168, 224, 288]
    add [9,18,27,36,45,54] `shouldBe` [9, 27, 54, 90, 135, 189]
