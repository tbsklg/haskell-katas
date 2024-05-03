module Kyu8.BoolToStringSpec where

import Kyu8.BoolToString
import Test.Hspec

spec :: Spec
spec = do
  describe "Tests" $ do
    it "Sample Tests" $ do
      (booleanToString True) `shouldBe` ("True" :: String)
      (booleanToString False) `shouldBe` ("False" :: String)

main = hspec spec
