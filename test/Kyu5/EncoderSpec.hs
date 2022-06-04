module Kyu5.EncoderSpec where

import Kyu5.Encoder (compress)
import Test.Hspec ( shouldBe, it, Spec )

spec :: Spec
spec = do
  it "should encode identical numbers" $ do
    compress [1, 2, 2, 3] `shouldBe` "1,2*2,3"
    compress [1, 2, 2, 3, 3, 3, 3] `shouldBe` "1,2*2,3*4"

  it "should encode consecutive numbers" $ do
    compress [1, 2, 3, 1] `shouldBe` "1-3,1"
    compress [1, 5, 4, 3, 2, 7] `shouldBe` "1,5-2,7"

  it "should encode interval numbers" $ do
    compress [1, 10, 8, 6, 7] `shouldBe` "1,10-6/2,7"

  it "should encode combined numbers" $ do
    compress [14, 133, 13, 16, 1, 2, 122, 124, 126, 128, 130, 60, 164, 110, 112, 114, 116, 53, 52, 51, 126, 128, 130, 132, 58, 56, 50, 50, 53, 52, 50, 48, 154, 125, 39]
      `shouldBe` "14,133,13,16,1,2,122-130/2,60,164,110-116/2,53-51,126-132/2,58,56,50*2,53,52-48/2,154,125,39"

    compress [160, 196, 0, 1, 2, 3, 4, 21, 20, 19, 18, 17, 50, 53, 56, 59, 81, 22, 174, 126, 175, 175, 175, 175, 175, 55, 54, 53, 52, 46, 62, 62, 62, 62, 62, 156, 73, 102, 103, 104, 105, 85]
      `shouldBe` "160,196,0-4,21-17,50-59/3,81,22,174,126,175*5,55-52,46,62*5,156,73,102-105,85"

    compress [160, 196, 0, 1, 2, 3, 4, 21, 20, 19, 18, 17, 50, 53, 56, 59, 81, 22, -2, -2, 175, 175, 175, 175, 175, 55, 54, 53, 52, 46, 62, 62, 62, 62, 62, 156, 73, 102, 103, 104, 105, 85]
      `shouldBe` "160,196,0-4,21-17,50-59/3,81,22,-2*2,175*5,55-52,46,62*5,156,73,102-105,85"

  it "should encode negative numbers" $ do
    compress [-2, -2] `shouldBe` "-2*2"
