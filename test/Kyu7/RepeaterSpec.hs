module Kyu7.RepeaterSpec where

import Kyu7.Repeater (repeater)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      repeater "a"    5  `shouldBe` "aaaaa"
      repeater "Na"   16 `shouldBe` "NaNaNaNaNaNaNaNaNaNaNaNaNaNaNaNa"
      repeater "Wub " 6  `shouldBe` "Wub Wub Wub Wub Wub Wub "
