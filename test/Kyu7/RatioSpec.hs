module Kyu7.RatioSpec where

import Kyu7.Ratio (showRatio)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "showRatio" $ do
    it "should return Nothing if one of the arguments is zero" $
      property $ \k -> showRatio 0 k === Nothing .&. showRatio k 0 === Nothing

    it "should return something if both arguments are positive" $
      property $ \(Positive a) (Positive b) ->
        showRatio a b `shouldSatisfy` maybe False (const True)
