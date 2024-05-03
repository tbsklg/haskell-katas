module Kyu6.RectangleSpec where

import Kyu6.Rectangle (squaresInRect)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "squaresInRect" $ do
    it "should work for some examples" $ do
      squaresInRect 5 5 `shouldBe` Nothing
      squaresInRect 5 3 `shouldBe` Just [3, 2, 1, 1]
      squaresInRect 3 5 `shouldBe` Just [3, 2, 1, 1]
      squaresInRect 20 14 `shouldBe` Just [14, 6, 6, 2, 2, 2]

    it "should return Nothing for any square" $ property $ \(Positive x) ->
      squaresInRect x x `shouldBe` Nothing

    it "should return something for any true rectangle" $
      property $
        \(Positive x) (Positive y) ->
          x /= y ==>
            squaresInRect x y `shouldSatisfy` maybe False (const True)
