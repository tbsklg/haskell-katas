module Kyu7.RedKnightSpec (spec) where

import Kyu7.RedKnight (redKnight)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    redKnight 0 4 `shouldBe` ("White", 8)
    redKnight 1 5 `shouldBe` ("White", 10)
    redKnight 1 6 `shouldBe` ("Black", 12)
    redKnight 0 7 `shouldBe` ("Black", 14)
    redKnight 0 8 `shouldBe` ("White", 16)
