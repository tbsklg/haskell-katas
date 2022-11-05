module Kyu7.FilterWordsSpec where

import Kyu7.FilterWords (filterWords)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      filterWords "HELLO world!" `shouldBe` "Hello world!"
      filterWords "This    will    not    pass " `shouldBe` "This will not pass"
      filterWords "NOW THIS is a VERY EXCITING test!" `shouldBe` "Now this is a very exciting test!"
