module Kyu7.CrapSpec where

import Kyu7.Crap
import Test.HUnit (assertEqual)
import Test.Hspec

myTest garden bags cap exp = do
  assertEqual msg exp actual
  where
    actual = crap garden bags cap
    msg = "Failed at: " ++ showArgs
    showArgs = show (garden, bags, cap)

spec :: Spec
spec = do
  it "Fixed" $ do
    myTest [['_', '_', '_', '_'], ['_', '_', '_', '@'], ['_', '_', '@', '_']] 2 2 "Clean"
    myTest [['_', '_', '_', '_'], ['_', '_', '_', '@'], ['_', '_', '@', '_']] 1 1 "Cr@p"
    myTest [['_', '_'], ['_', '@'], ['D', '_']] 2 2 "Dog!!"
    myTest [['_', '_', '_', '_'], ['_', '_', '_', '_'], ['_', '_', '_', '_']] 2 2 "Clean"
    myTest [['@', '@'], ['@', '@'], ['@', '@']] 3 2 "Clean"

main = hspec spec
