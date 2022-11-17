module Kyu7.CountingValleysSpec (spec) where

import Kyu7.CountingValleys (valleys)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    valleys "FUFFDDFDUDFUFUF" `shouldBe` 1
