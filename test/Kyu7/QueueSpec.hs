module Kyu7.QueueSpec where

import Kyu7.Queue
import Test.HUnit (assertEqual)
import Test.Hspec

myTest q p exp = do
  assertEqual msg exp actual
  where
    actual = queue q p
    msg = "Failed at: " ++ showArgs
    showArgs = show (q, p)

spec :: Spec
spec = do
  it "Basic Tests " $ do
    myTest [2, 5, 3, 6, 4] 0 6
    myTest [2, 5, 3, 6, 4] 1 18
    myTest [2, 5, 3, 6, 4] 2 12
    myTest [2, 5, 3, 6, 4] 3 20
    myTest [2, 5, 3, 6, 4] 4 17

main = hspec spec
