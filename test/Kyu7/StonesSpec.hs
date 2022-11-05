module Kyu7.StonesSpec where

import Kyu7.Stones (solution)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed test cases:" $ do
    it "RRGGBB" $ do
      (solution "RRGGBB") `shouldBe` 3
    it "RGBRGB" $ do
      (solution "RGBRGB") `shouldBe` 0
    it "BGRBBGGBRRR" $ do
      (solution "BGRBBGGBRRR") `shouldBe` 4
    it "GBBBGGRRGRB" $ do
      (solution "GBBBGGRRGRB") `shouldBe` 4
    it "GBRGGRBBBBRRGGGB" $ do
      (solution "GBRGGRBBBBRRGGGB") `shouldBe` 7

-- the following line is optional for 8.2
main = hspec spec
