module Kyu7.PersonSaysHiSpec where

import Kyu7.PersonSaysHi
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "The sayHi function" $ do
    it "should work for some examples" $ do
      sayHi (Person "Haskell" "Curry") `shouldBe` "Hi, i'am Haskell Curry and it is nice to meet You."
