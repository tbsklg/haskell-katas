module Kyu7.PersonTypeStringRepresentationSpec where

import Kyu7.PersonTypeStringRepresentation
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "Basic tests" $ do
    it "should work for some examples" $ do
      show (Person "John" "Smith") `shouldBe` "John Smith"
