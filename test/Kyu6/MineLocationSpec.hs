module Kyu6.MineLocationSpec where
import Test.Hspec
import Data.Array

import Kyu6.MineLocation

mine22 = [1, 0,
          0, 0]
mine33 = [1, 0, 0,
          0, 0, 0,
          0, 0, 0]
mine44 = [0, 0, 0, 0,
          0, 0, 0, 0,
          0, 0, 1, 0,
          0, 0, 0, 0]

spec :: Spec
spec = do
  describe "2x2 mine" $ do
    it "finds the 2x2 mine" $ do
      mineLocation (listArray ((0, 0), (1, 1)) mine22) `shouldBe` Just (0, 0)
    it "finds the 3x3 mine" $ do
      mineLocation (listArray ((0, 0), (2, 2)) mine33) `shouldBe` Just (0, 0)
    it "finds the 4x4 mine" $ do
      mineLocation (listArray ((0, 0), (3, 3)) mine44) `shouldBe` Just (2, 2)

