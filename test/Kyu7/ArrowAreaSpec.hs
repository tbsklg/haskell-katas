module Kyu7.ArrowAreaSpec where

import Kyu7.ArrowArea

import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "Fixed tests" $ do
    arrowArea 4 2    `shouldBe` 2.0
    arrowArea 7 6    `shouldBe` 10.5
    arrowArea 25 25  `shouldBe` 156.25
