module Kyu7.FusionChamberShutdownSpec where

import Test.Hspec
import Kyu7.FusionChamberShutdown (burner)

spec :: Spec
spec = do
  it "Fixed tests" $ do
    -- c h o
    burner 45 11 100 `shouldBe` (5, 45, 0)
    burner 354 1023230 0 `shouldBe` (0, 0, 354)
    burner 939 3 694 `shouldBe` (1, 346, 0)
    burner 215 41 82100 `shouldBe` (20, 215, 0)
    burner 113 0 52 `shouldBe` (0, 26, 0)
