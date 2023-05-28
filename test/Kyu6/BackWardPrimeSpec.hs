module Kyu6.BackWardPrimeSpec (spec, main) where

import Kyu6.BackWardsPrime
import Test.HUnit
import Test.Hspec

main = hspec spec
spec = do
  describe "BackWards Primes" $ do
    it "1st series" $ do
      backwardsPrime 7000 7100 `shouldBe` [7027, 7043, 7057]
      backwardsPrime 70000 70245 `shouldBe` [70001, 70009, 70061, 70079, 70121, 70141, 70163, 70241]
