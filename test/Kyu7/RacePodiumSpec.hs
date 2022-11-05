module Kyu7.RacePodiumSpec where

import Kyu7.RacePodium
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "Fixed tests" $ do
    racePodium 11 `shouldBe` (4, 5, 2)
    racePodium 6 `shouldBe` (2, 3, 1)
    racePodium 10 `shouldBe` (4, 5, 1)
    racePodium 100000 `shouldBe` (33334, 33335, 33331)
    racePodium 7 `shouldBe` (2, 4, 1)
    racePodium 8 `shouldBe` (3, 4, 1)
