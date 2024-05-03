module Kyu7.CatsAndShelvesSpec (spec) where

import Kyu7.CatsAndShelves (solve)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "solve 1 5" 2 $ solve 1 5
