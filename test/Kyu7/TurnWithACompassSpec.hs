module Kyu7.TurnWithACompassSpec (spec) where

import Kyu7.TurnWithACompass (direction, Direction (..))
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    direction S 180 `shouldBe` N
    direction SE (-45) `shouldBe` E
    direction W 495 `shouldBe` NE
    direction N (-450) `shouldBe` W
