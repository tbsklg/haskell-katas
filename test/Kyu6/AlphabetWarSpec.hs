module Kyu6.AlphabetWarSpec where

import Kyu6.AlphabetWar
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = alphabetWar s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  it "Fixed " $ do
    myTest "sz**z**zs" "Left side wins!"
    myTest "zdqmwpbs" "Let's fight again!"
    myTest "z*dq*mw*pb*s" "Let's fight again!"
    myTest "****" "Let's fight again!"
    myTest "z" "Right side wins!"
    myTest "zz*zzs" "Right side wins!"
    myTest "z*z*z*zs" "Left side wins!"
    myTest "*wwwwww*z*" "Left side wins!"
    myTest "w****z" "Let's fight again!"
    myTest "mb**qwwp**dm" "Let's fight again!"

-- the following line is optional for 8.2
main = hspec spec
