module Kyu7.LengthAndTwoValuesSpec (spec) where

import Kyu7.LengthAndTwoValues (alternate)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    alternate 5 True False `shouldBe` [True,False,True,False,True]
    alternate 20 "blue" "red" `shouldBe` ["blue","red","blue","red","blue","red","blue","red","blue","red","blue","red","blue","red","blue","red","blue","red","blue","red"]
    alternate 0 "lemons" "apples" `shouldBe` []
