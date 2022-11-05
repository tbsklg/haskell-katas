module Kyu7.BuildingSpec (spec, main) where

import Kyu7.Building (block, getHeight, getLength, getSurfaceArea, getVolume, getWidth)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

main = hspec spec

spec = do
  describe "getWidth" $
    prop "returns the width" $ \(NonNegative w) (NonNegative l) (NonNegative h) ->
      let t = (w, l, h)
       in getWidth (block t) `shouldBe` w

  describe "getLength" $
    prop "returns the length" $ \(NonNegative w) (NonNegative l) (NonNegative h) ->
      let t = (w, l, h)
       in getLength (block t) `shouldBe` l

  describe "getHeight" $
    prop "returns the height" $ \(NonNegative w) (NonNegative l) (NonNegative h) ->
      let t = (w, l, h)
       in getHeight (block t) `shouldBe` h

  describe "getVolume" $ do
    prop "returns a proper volume" $ \(NonNegative w) (NonNegative l) (NonNegative h) ->
      let t = (w, l, h)
       in getVolume (block t) `shouldSatisfy` (>= 0)

  describe "getSurfaceArea" $ do
    prop "returns a proper surface area" $ \(NonNegative w) (NonNegative l) (NonNegative h) ->
      let t = (w, l, h)
       in getSurfaceArea (block t) `shouldSatisfy` (>= 0)
