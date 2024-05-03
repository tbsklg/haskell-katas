module Kyu6.CompareVersionsSpec (spec) where

import Kyu6.CompareVersions
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

main = hspec spec

spec = describe "compareVersions" $ do
  it "returns GT if version1 is greater than version2" $ do
    compareVersions "11" "10" `shouldBe` GT
    compareVersions "10.4.6" "10.4" `shouldBe` GT
    compareVersions "10.10" "10.9" `shouldBe` GT

  it "returns LT if version1 is less than version2" $ do
    compareVersions "10" "11" `shouldBe` LT
    compareVersions "10.4" "10.4.6" `shouldBe` LT
    compareVersions "10.99" "10.100" `shouldBe` LT
