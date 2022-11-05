module Kyu7.BeatsSpec where

import Control.Applicative (liftA2)
import Kyu7.Beats (beasts)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "beasts" $ do
    it "returns zero if there aren't any tails or heads" $
      beasts 0 0 `shouldBe` Just (0, 0)

    it "works for random valid heads and tails" $
      property $
        \(Positive o) (Positive h) ->
          beasts (2 * o + 5 * h) (o + h) `shouldBe` Just (o, h)

    it "returns Nothing for invalid numbers of headss and tails" $
      property $
        \(Positive o) (Positive h) ->
          beasts (2 * o + 5 * h) (o + h + 1) `shouldBe` Nothing

    it "returns Nothing if one argument is negative" $
      forAll (oneof [pos <#> neg, neg <#> pos]) $ \(x, y) ->
        beasts x y `shouldBe` Nothing
  where
    pos = getPositive `fmap` arbitrary
    neg = negate `fmap` pos
    (<#>) = liftA2 (,)
