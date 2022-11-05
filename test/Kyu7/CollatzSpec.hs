module Kyu7.CollatzSpec (spec) where

import Kyu7.Collatz (collatz)
import Test.Hspec

main = hspec spec

spec = do
  describe "collatz length" $ do
    it "should work for some examples" $ do
      collatz 1 `shouldBe` 1
      collatz 2 `shouldBe` 2
      collatz 15 `shouldBe` 18

--   collatz 20 `shouldBe`  8
