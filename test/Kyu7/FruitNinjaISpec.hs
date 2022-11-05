module Kyu7.FruitNinjaISpec where

import Kyu7.FruitNinjaI
import Test.HUnit (assertEqual)
import Test.Hspec

myTest fts exp = do
  assertEqual msg exp actual
  where
    actual = cutFruits fts
    msg = "Failed at: " ++ showArgs
    showArgs = show fts

spec :: Spec
spec = do
  it ("Basic Tests") $ do
    myTest ["apple", "pear", "banana"] ["app", "le", "pe", "ar", "ban", "ana"]
    myTest ["apple", "pear", "banana", "bomb"] ["app", "le", "pe", "ar", "ban", "ana", "bomb"]

-- the following line is optional for 8.2
main = hspec spec
