module Kyu7.MeetingSpec where

import Kyu7.Meeting
import Test.HUnit (assertEqual)
import Test.Hspec

myTest s exp = do
  assertEqual msg exp actual
  where
    actual = meeting s
    msg = "Failed at: " ++ showArgs
    showArgs = s

spec :: Spec
spec = do
  describe "Fixed cases" $ do
    it "Tests with one empty room" $ do
      myTest ['X', 'O', 'X'] (Right 1)
      myTest ['O', 'X', 'X', 'X', 'X'] (Right 0)
      myTest ['X', 'X', 'O', 'X', 'X'] (Right 2)
      myTest ['X', 'O', 'X', 'X', 'X'] (Right 1)
      myTest ['X', 'X', 'X', 'X', 'O'] (Right 4)
    it "myTests with multiple empty rooms" $ do
      myTest ['X', 'O', 'O', 'O'] (Right 1)
      myTest ['X', 'O', 'X', 'O'] (Right 1)
      myTest ['O', 'O', 'O', 'O'] (Right 0)
      myTest ['X', 'X', 'O', 'O'] (Right 2)
      myTest ['X', 'X', 'X', 'O', 'O'] (Right 3)
    it "myTests without empty rooms" $ do
      myTest ['X'] (Left "None available!")
      myTest ['X', 'X'] (Left "None available!")
      myTest ['X', 'X', 'X', 'X'] (Left "None available!")
      myTest ['X', 'X', 'X'] (Left "None available!")
      myTest ['X', 'X', 'X', 'X', 'X'] (Left "None available!")

-- the following line is optional for 8.2
main = hspec spec
