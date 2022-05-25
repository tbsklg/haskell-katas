module Kyu7.SequenceLengthSpec (spec) where

import Kyu7.SequenceLength (lengthOfSequence)
import Test.Hspec

spec = do
  describe "lengthOfSequence with two occurrences" $ do
    it "Should return the length of the sequence including both occurrences" $ do
      lengthOfSequence [100,100]    100 `shouldBe` Just 2
      lengthOfSequence [1,2,3,1]      1 `shouldBe` Just 4
  describe "lengthOfSequence with other occurrences" $ do
    it "Should return Nothing when there are too many occurrences" $ do
      lengthOfSequence [-7,5,9,5,2,9,5]  5 `shouldBe` Nothing
      lengthOfSequence [0,0,0]           0 `shouldBe` Nothing
    it "Should return Nothing when there are too few occurrences" $ do
      lengthOfSequence [] 5 `shouldBe` Nothing
      lengthOfSequence [5] 5 `shouldBe` Nothing
