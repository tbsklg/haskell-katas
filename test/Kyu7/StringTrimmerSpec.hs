module Kyu7.StringTrimmerSpec where

import Kyu7.StringTrimmer (trim)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "trim" $ do
    it "works for some examples" $ do
      trim "Creating kata is fun" 14 `shouldBe` "Creating ka..."
      trim "He" 1 `shouldBe` "H..."
      trim "Hey" 2 `shouldBe` "He..."
      trim "Hey" 3 `shouldBe` "Hey"
      trim "Coding rocks" 12 `shouldBe` "Coding rocks"
      trim "Code Wars is pretty rad" 50 `shouldBe` "Code Wars is pretty rad"
      trim "London is freezing" 18 `shouldBe` "London is freezing"

    it "should work when str is not larger than maximum string length" $
      property $
        forAll (listOf1 $ choose ('a', 'z')) $ \str ->
          forAll (choose (length str, length str * 10)) $ \n ->
            trim str n `shouldBe` str
