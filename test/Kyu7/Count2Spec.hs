module Kyu7.Count2Spec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Count2
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "counts the zeros" $ do
    countZeros 10 `shouldBe` 1
    countZeros 100 `shouldBe` 11
    countZeros 200 `shouldBe` 31

-- the following line is optional for 8.2
main = hspec spec
