module Kyu7.StrengthSpec where

import Kyu7.Strength (alexMistakes)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "alexMistakes" $ do
    it "works for some examples" $ do
      alexMistakes 10 120 `shouldBe` 3
      alexMistakes 11 120 `shouldBe` 3
      alexMistakes 3 45 `shouldBe` 2
      alexMistakes 8 120 `shouldBe` 3
      alexMistakes 6 60 `shouldBe` 2
      alexMistakes 9 180 `shouldBe` 4

    it "returns 0 if there is no time for mistakes" $
      property $ \(Positive x) ->
        alexMistakes x (x * 60 `div` 10) `shouldBe` 0
