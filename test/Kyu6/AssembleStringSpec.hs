module Kyu6.AssembleStringSpec (spec) where

import Kyu6.AssembleString (assembleString)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assembleString ["H*llo, W*rld!", "Hel*o, *or*d!", "*ello* World*"] `shouldBe` "Hello, World!"
    assembleString [".** . .' .'' ! ! .", ". . . .' **' ! * .", "* . .*.* .'' * ! .", ". . .*.' .**** ! .", "**. * .* .*' ! ! ."]  `shouldBe` ". . . .' .'' ! ! ."
    assembleString [". . . .", ". . . .", ". . . .", ". . . .", ". . . ."]  `shouldBe` ". . . ."
    assembleString ["12***6789", "**3456789", "12345**8*", "***456**9", "1*3*5*7*9", "*2*456789"] `shouldBe` "123456789"
    assembleString ["******", "******", "******", "******"] `shouldBe` "######"
    assembleString ["*#*#*#*#*#*#*#*", "*#*#*#*#*#*#*#*", "*#*#*#*#*#*#*#*", "*#*#*#*#*#*#*#*"] `shouldBe` "###############"
