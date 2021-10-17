module Kyu7.MissingNumberSpec where

import Kyu7.MissingNumber (missingNo)
import Test.Hspec
import Test.QuickCheck

spec = do
  it "zero" $
    forAll (shuffle [1..100]) $ \xs ->
      missingNo xs `shouldBe` 0
  it "twelve" $
    forAll (shuffle $ [0..11] ++ [13..100]) $ \xs ->
      missingNo xs `shouldBe` 12
