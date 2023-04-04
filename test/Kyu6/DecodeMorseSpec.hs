module Kyu6.DecodeMorseSpec where

import Kyu6.DecodeMorse (decodeMorse)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "decodeMorse" $ do    
    it "should work on the example from the description" $ do
      decodeMorse ".... . -.--   .--- ..- -.. ." `shouldBe` "HEY JUDE"

