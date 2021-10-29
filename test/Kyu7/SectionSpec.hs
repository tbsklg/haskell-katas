module Kyu7.SectionSpec (spec) where

import Kyu7.Section (section)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "given 299 [300,200,400,600,100]" $ do
      section 299 [300,200,400,600,100] `shouldBe` Just 0
    it "given 300 [300,200,400,600,100]" $ do
      section 300 [300,200,400,600,100] `shouldBe` Just 1
    it "given 1600 [300,200,400,600,100]" $ do
      section 1600 [300,200,400,600,100] `shouldBe` Nothing