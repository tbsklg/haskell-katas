module Kyu7.SeqListSpec where

import Kyu7.SeqList
import Test.Hspec

spec :: Spec
spec = do
  describe "seqlist" $ do 
    it "first = 0, c = 1, l = 20" $ do
      seqlist 0 1 20 `shouldBe` [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]
