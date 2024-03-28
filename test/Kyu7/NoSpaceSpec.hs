module Kyu7.NoSpaceSpec where

import Kyu7.NoSpace (spacey)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "Example tests" $ do
    assertEqual "['kevin', 'has','no','space']" ["kevin", "kevinhas", "kevinhasno", "kevinhasnospace"] $ spacey ["kevin", "has", "no", "space"]
    assertEqual "['this', 'cheese', 'has', 'no','holes']" ["this","thischeese","thischeesehas","thischeesehasno","thischeesehasnoholes"] $ spacey ["this", "cheese", "has", "no", "holes"]

