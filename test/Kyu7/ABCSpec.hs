module Kyu7.ABCSpec where

import Kyu7.ABC
import Test.Hspec

spec :: Spec
spec = do
  describe "alphabetize" $ do
    it "testing 'bca'" $ shouldBe (alphabetize "bca") "abc"
