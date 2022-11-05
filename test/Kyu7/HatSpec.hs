module Kyu7.HatSpec (spec) where

import Kyu7.Hat
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest (WHITE, BLACK, WHITE, BLACK) P2
    myTest (WHITE, BLACK, BLACK, WHITE) P1

myTest :: (Color, Color, Color, Color) -> Player -> Expectation
myTest arg exp = assertEqual ("Failed at: " ++ show arg) exp (guessHatColor arg)
