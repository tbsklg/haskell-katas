module Kyu7.LuckyNumbersSpec where

import Kyu7.LuckyNumbers
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "filterLucky" $
    it "should work on contrived examples" $ do
      (map filterLucky [[7], [1, 2, 3], [77, 8], [71], [71, 9907, 69]])
        `shouldBe` [[7], [], [77], [71], [71, 9907]]
