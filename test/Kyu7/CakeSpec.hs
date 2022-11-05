module Kyu7.CakeSpec where

import Kyu7.Cake
import Test.HUnit (assertEqual)
import Test.Hspec

myTest tol desc exp = do
  assertEqual msg exp actual
  where
    actual = cake tol desc
    msg = "Failed at: " ++ showArgs
    showArgs = show (tol, desc)

spec :: Spec
spec = do
  it "Fixed " $ do
    myTest 900 "abcdef" "That was close!"
    myTest 56 "ifkhchlhfd" "Fire!"
    myTest 256 "aaaaaddddr" "Fire!"
    myTest 333 "jfmgklfhglbe" "Fire!"
    myTest 12 "jaam" "Fire!"

-- the following line is optional for 8.2
main = hspec spec
