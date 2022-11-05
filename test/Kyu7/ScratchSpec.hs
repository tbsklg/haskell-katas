module Kyu7.ScratchSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Scratch
import Test.Hspec
import Test.QuickCheck

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "finds the prizes" $ do
    scratch ["tiger tiger tiger 100", "rabbit dragon snake 100", "rat ox pig 1000", "dog cock sheep 10", "horse monkey rat 5", "dog dog dog 1000"] `shouldBe` 1100

-- the following line is optional for 8.2
main = hspec spec
