module Kyu7.GuardingTheAlgoLandiaSpec (spec) where

import Kyu7.GuardingTheAlgoLandia (findNeededGuards)
import Test.Hspec

spec :: Spec
spec = do
  it "test already safe" $ findNeededGuards [True, True, False, True, False] `shouldBe` 0
  it "easy test" $ findNeededGuards [False, False, True, False, False] `shouldBe` 2
