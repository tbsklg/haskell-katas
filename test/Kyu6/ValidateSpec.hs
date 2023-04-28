module Kyu6.ValidateSpec where

import Kyu6.Validate
import Test.Hspec

spec :: Spec
spec = do
  describe "validate" $ do 
    it "123 is not valid" $ do
      validate 123 `shouldBe` False
    it "1 is not valid" $ do
      validate 1 `shouldBe` False
    it "2121 is valid" $ do
      validate 2121 `shouldBe` True
    it "1230 is valid" $ do
      validate 1230 `shouldBe` True

