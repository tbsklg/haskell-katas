module Kyu7.Sequence.JorgenVSSpec where

import Kyu7.Sequence.JorgenVS
import Test.Hspec

spec :: Spec
spec = do
  describe "Sequence Test" $ do
    it "n = 6" $ do
      (sequenceSum 6) `shouldBe` "0+1+2+3+4+5+6 = 21"
