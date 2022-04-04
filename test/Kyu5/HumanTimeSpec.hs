module Kyu5.HumanTimeSpec where

import Kyu5.HumanTime (humanReadable)
import Test.Hspec

spec :: Spec
spec = do
  describe "humanReadable" $ do
    it "should work for some examples" $ do
      humanReadable 0      `shouldBe` "00:00:00"
      humanReadable 59     `shouldBe` "00:00:59"
      humanReadable 60     `shouldBe` "00:01:00"
      humanReadable 90     `shouldBe` "00:01:30"
      humanReadable 86399  `shouldBe` "23:59:59"
      humanReadable 359999 `shouldBe` "99:59:59"