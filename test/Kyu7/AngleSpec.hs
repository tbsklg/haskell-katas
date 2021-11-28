module Kyu7.AngleSpec where
import Kyu7.Angle (angle)
import Test.Hspec

spec :: Spec
spec = do
    it "Basic tests" $ do
      angle 3    `shouldBe` 180
      angle 4    `shouldBe` 360