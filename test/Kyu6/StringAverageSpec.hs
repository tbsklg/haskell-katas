module Kyu6.StringAverageSpec where

import Kyu6.StringAverage (averageString)
import Test.Hspec

spec :: Spec
spec = do
  describe "String average" $ do
    it "example tests" $ do
      averageString "zero nine five two" `shouldBe` "four"
      averageString "four six two three" `shouldBe` "three"
      averageString "one two three four five" `shouldBe` "three"
      averageString "five four" `shouldBe` "four"
      averageString "zero zero zero zero zero" `shouldBe` "zero"
      averageString "one one eight one" `shouldBe` "two"
      averageString "" `shouldBe` "n/a"

