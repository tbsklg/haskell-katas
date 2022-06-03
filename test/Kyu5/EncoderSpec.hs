module Kyu5.EncoderSpec where

import Kyu5.Encoder (compress)
import Test.Hspec

spec :: Spec
spec = do
  it "should encode identical numbers" $ do
    compress [1, 2, 2, 3] `shouldBe` "1,2*2,3"
    compress [1, 2, 2, 3, 3, 3, 3] `shouldBe` "1,2*2,4*3"

  it "should encode consecutive numbers" $ do
    compress [1, 2, 3, 1] `shouldBe` "1-3,1"
    compress [1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20] `shouldBe` ""
