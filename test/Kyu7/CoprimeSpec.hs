module Kyu7.CoprimeSpec (spec) where

import Kyu7.Coprime (coprime)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    coprime 20 27 `shouldBe` True
    coprime 12 39 `shouldBe` False
