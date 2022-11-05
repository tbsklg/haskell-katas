module Kyu7.SortedSpec where

import Kyu7.Sorted
import Test.Hspec

spec :: Spec
spec = do
  describe "sortList" $ do
    it "should work on some examples" $ do
      sortList fst (zip [1 .. 10] [20, 19 ..]) `shouldBe` zip [1 .. 10] [20, 19 ..]
      sortList snd (zip [1 .. 10] [20, 19 ..]) `shouldBe` zip [10, 9 .. 1] [11 .. 20]
