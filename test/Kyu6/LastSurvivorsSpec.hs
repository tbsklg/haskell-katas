module Kyu6.LastSurvivorsSpec (spec) where

import Kyu6.LastSurvivors (lastSurvivors)
import Test.Hspec
import Data.List (sort)

spec :: Spec
spec = do
  it "example tests" $ do
    sort (lastSurvivors "abaa") `shouldBe` "ac"
    sort (lastSurvivors "zzab") `shouldBe` "c"
    lastSurvivors "" `shouldBe` ""
