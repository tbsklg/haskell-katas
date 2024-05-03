module Kyu6.ManhattanSpec where

import Kyu6.Manhattan
import Test.Hspec

spec :: Spec
spec = do
  describe "Testing solution:" $ do
    it "Should compute manhattan distance:" $ do
      manhattanDistance (1, 1) (2, 1) `shouldBe` 1
