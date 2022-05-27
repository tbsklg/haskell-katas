module Kyu7.OperationsSpec where
import Kyu7.Operations

import Test.Hspec

spec :: Spec
spec = do
  describe "Test" $ do
    it "Example Tests" $ do
      calc [0, 2, 1, -6, -3, 3] `shouldBe` 31
      calc [0] `shouldBe` 0
      calc [1, 1, -9, 9, 16, -15, -45, -73, 26] `shouldBe` 1665
      calc [1, -1, 10, -9, 16, 15, 45, -73, -26] `shouldBe` 2584
