module Kyu7.StackedBalls2DSpec (spec) where

import Test.Hspec
import Kyu7.StackedBalls2D.Preloaded (shouldBeFuzzy)
import Kyu7.StackedBalls2D (stack)

spec :: Spec
spec = do
  it "Example tests" $ do
    stack 1 `shouldBeFuzzy` 1
    stack 2 `shouldBeFuzzy` 1.866
