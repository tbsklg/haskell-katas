module Kyu6.DecoderSpec where

import Kyu6.Decoder (uncompress)
import Test.Hspec

spec :: Spec
spec = do
  it "should decode simple numbers" $ do
    uncompress "1,2,3,4" `shouldBe` [1, 2, 3, 4]

  it "should decode identical numbers" $ do
    uncompress "1,2*2,3" `shouldBe` [1, 2, 2, 3]

  it "should decode consecutive numbers, ascending" $ do
    uncompress "1,3-5,7" `shouldBe` [1, 3, 4, 5, 7]

  it "should decode consecutive numbers, descending" $ do
    uncompress "1,5-3,7" `shouldBe` [1, 5, 4, 3, 7]

  it "should decode numbers with same interval, descending" $ do
    uncompress "1,10-6/2,7" `shouldBe` [1, 10, 8, 6, 7]

  it "should decode numbers with same interval and negative number, descending" $ do
    uncompress "1,10--6/2,7" `shouldBe` [1, 10, 8, 6, 4, 2, 0, -2, -4, -6, 7]

  it "should decode numbers with same interval, ascending" $ do
    uncompress "1,6-10/2,7" `shouldBe` [1, 6, 8, 10, 7]
