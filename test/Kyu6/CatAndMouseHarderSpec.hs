module Kyu6.CatAndMouseHarderSpec where

import Kyu6.CatAndMouseHarder
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s n exp = do
  assertEqual msg exp actual
  where
    actual = catMouse s n
    msg = "Failed at: " ++ showArgs
    showArgs = show (s, n)

spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest "..D.....C.m" 2 (Right "Caught!")
    myTest "............C.............D..m..." 8 (Right "Escaped!")
    myTest "m.C..." 5 (Left "boring without all three")
    myTest ".CD......m." 10 (Right "Protected!")
    myTest ".CD......m." 1 (Right "Escaped!")

-- the following line is optional for 8.2
main = hspec spec
