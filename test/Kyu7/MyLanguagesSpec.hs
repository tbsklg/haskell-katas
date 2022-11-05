module Kyu7.MyLanguagesSpec (spec) where

import Kyu7.MyLanguages (Language, Score, myLanguages)
import Test.HUnit (assertEqual)
import Test.Hspec

myTest res exp = do
  assertEqual msg exp actual
  where
    actual = myLanguages res
    msg = "Failed at: " ++ showArgs
    showArgs = show res

spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest [("Java", 10), ("Ruby", 80), ("Python", 65)] ["Ruby", "Python"]
    myTest [("Hindi", 60), ("Greek", 71), ("Dutch", 93)] ["Dutch", "Greek", "Hindi"]
    myTest [("C++", 50), ("ASM", 10), ("Haskell", 20)] []
