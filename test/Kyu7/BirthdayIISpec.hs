module Kyu7.BirthdayIISpec where

import Test.Hspec
import Kyu7.BirthdayII


import Test.HUnit (assertEqual)

myTest p n exp = do
  assertEqual msg exp actual
  where 
    actual = present p n
    msg = "Failed at: " ++ showArgs
    showArgs = show (p,n)
    
spec :: Spec
spec = do
  it "Basic tests" $ do
    myTest Badpresent 3   "Take this back!"
    myTest Goodpresent 9  "pxxmy{n|nw}"
    myTest Crap 10        "acpr"
    myTest Bang 27        "300"
    myTest Dog 23         "pass out from excitement 23 times"

-- the following line is optional for 8.2
main = hspec spec