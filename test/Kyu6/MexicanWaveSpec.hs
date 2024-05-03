module Kyu6.MexicanWaveSpec where

import Kyu6.MexicanWave
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = wave s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  it "Fixed cases " $ do
    myTest "" []
    myTest " gap " [" Gap ", " gAp ", " gaP "]
    myTest "a       b    " ["A       b    ", "a       B    "]
    myTest "this is a few words" ["This is a few words", "tHis is a few words", "thIs is a few words", "thiS is a few words", "this Is a few words", "this iS a few words", "this is A few words", "this is a Few words", "this is a fEw words", "this is a feW words", "this is a few Words", "this is a few wOrds", "this is a few woRds", "this is a few worDs", "this is a few wordS"]

-- the following line is optional for 8.2
main = hspec spec
