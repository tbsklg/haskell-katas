module Kyu7.BasicMathSpec (spec) where

import Kyu7.BasicMath (calc)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    calc "1plus2plus3plus4" `shouldBe` "10"
    calc "1plus2plus3minus4" `shouldBe` "2"
    calc "1minus2minus3minus4" `shouldBe` "-8"