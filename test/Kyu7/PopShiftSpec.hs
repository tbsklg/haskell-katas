module Kyu7.PopShiftSpec where

import Test.Hspec
import Kyu7.PopShift


import Test.HUnit (assertEqual)

myTest s exp = do
  assertEqual msg exp actual
  where 
    actual = popShift s
    msg = "Failed at: " ++ showArgs
    showArgs = s
    
spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest "reusetestcasesbitcointakeovertheworldmaybewhoknowsperhaps" ("spahrepswonkohwebyamdlroweht","reusetestcasesbitcointakeove", Just 'r')
    myTest "turnsoutrandomtestcasesareeasierthanwritingoutbasicones" ("senocisabtuognitirwnahtreis","turnsoutrandomtestcasesaree", Just 'a')
    myTest "exampletesthere" ("erehtse","example",Just 't')
    myTest "letstalkaboutjavascriptthebestlanguage" ("egaugnaltsebehttpir","letstalkaboutjavasc",Nothing)
    myTest "iwanttotraveltheworldwritingcodeoneday" ("yadenoedocgnitirwdl","iwanttotravelthewor",Nothing)
    myTest "letsallgoonholidaysomewhereverycold" ("dlocyreverehwemos","letsallgoonholida",Just 'y')

-- the following line is optional for 8.2
main = hspec spec
