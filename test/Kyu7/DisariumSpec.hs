module Kyu7.DisariumSpec where

import Kyu7.Disarium
import Test.Hspec

spec :: Spec
spec = do
  describe "looks for Disarium numbers" $ do
    it "a few test cases" $ do
      disariumNumber 89 `shouldBe` "Disarium !!"
      disariumNumber 564 `shouldBe` "Not !!"
      disariumNumber 1024 `shouldBe` "Not !!"
      disariumNumber 135 `shouldBe` "Disarium !!"
      disariumNumber 136586 `shouldBe` "Not !!"
