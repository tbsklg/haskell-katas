module Kyu7.BoredomSpec where

import Kyu7.Boredom
import Test.HUnit (assertEqual)
import Test.Hspec

myTest staff exp = do
  assertEqual msg exp actual
  where
    actual = boredom staff
    msg = "Failed at: " ++ showArgs
    showArgs = show staff

spec :: Spec
spec = do
  it "Fixed Cases" $ do
    myTest [("tim", CHANGE), ("jim", ACCOUNTS), ("randy", CANTEEN), ("sandy", CHANGE), ("andy", CHANGE), ("katie", IS), ("laura", CHANGE), ("saajid", IS), ("alex", TRADING), ("john", ACCOUNTS), ("mr", FINANCE)] "kill me now"

-- the following line is optional for 8.2
main = hspec spec
