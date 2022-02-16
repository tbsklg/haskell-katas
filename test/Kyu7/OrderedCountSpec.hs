module Kyu7.OrderedCountSpec where

import Test.Hspec
import Kyu7.OrderedCount

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      orderedCount "abracadabra" `shouldBe` [('a', 5), ('b', 2), ('r', 2), ('c', 1), ('d', 1)]
      orderedCount "Code Wars"   `shouldBe` [('C', 1), ('o', 1), ('d', 1), ('e', 1), (' ', 1), ('W', 1), ('a', 1), ('r', 1), ('s', 1)]
