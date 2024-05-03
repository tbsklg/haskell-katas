module Kyu6.LastSurvivorsSpec (spec) where

import Data.List (sort)
import Kyu6.LastSurvivors (lastSurvivors)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sort (lastSurvivors "abaa") `shouldBe` "ac"
    sort (lastSurvivors "zzab") `shouldBe` "c"
    lastSurvivors "" `shouldBe` ""
