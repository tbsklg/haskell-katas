module Kyu6.AlphabetizedSpec (spec) where

import Test.Hspec
import Kyu6.Alphabetized (alphabetized)

spec :: Spec
spec = do
  describe "Alphabetized" $ do
    it "Example test" $ do
      alphabetized "The Holy Bible" `shouldBe` "BbeehHilloTy"

