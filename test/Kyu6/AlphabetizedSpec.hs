module Kyu6.AlphabetizedSpec (spec) where

import Kyu6.Alphabetized (alphabetized)
import Test.Hspec

spec :: Spec
spec = do
  describe "Alphabetized" $ do
    it "Example test" $ do
      alphabetized "The Holy Bible" `shouldBe` "BbeehHilloTy"
