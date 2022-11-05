module Kyu7.WhatComesAfterSpec (spec) where

import Kyu7.WhatComesAfter (comesAfter)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    comesAfter "are you really learning Ruby?" 'r' `shouldBe` "eenu"
    comesAfter "Katy Perry is on the radio!" 'r' `shouldBe` "rya"
    comesAfter "Pirates say arrrrrrrrr." 'r' `shouldBe` "arrrrrrrr"
    comesAfter "r8 your friend" 'r' `shouldBe` "i"
  it "more example tests" $ do
    comesAfter "Free coffee for all office workers!" 'F' `shouldBe` "rfeofi"
    comesAfter "king kUnta is the sickest rap song ever kNown k!" 'k' `shouldBe` "iUeN"
    comesAfter "p8tice makes pottery p0rfect!" 'p' `shouldBe` "o"
    comesAfter "d8u d._ rly 2d1s" 'D' `shouldBe` ""
    comesAfter "nothing to be found here" 'z' `shouldBe` ""
