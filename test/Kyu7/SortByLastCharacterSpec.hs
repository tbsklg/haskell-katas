module Kyu7.SortByLastCharacterSpec (spec) where

import Kyu7.SortByLastCharacter (sortMe)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "example tests" $ do
    sortMe ["acvd", "bcc"] `shouldBe` ["bcc", "acvd"]
    sortMe ["14", "13"] `shouldBe` ["13", "14"]
    sortMe ["asdf", "asdf", "14", "13"] `shouldBe` ["13", "14", "asdf", "asdf"]
    sortMe ["bsde", "asdf", "14", "13"] `shouldBe` ["13", "14", "bsde", "asdf"]
    sortMe ["asdf", "14", "13", "asdf"] `shouldBe` ["13", "14", "asdf", "asdf"]
    sortMe ["xxxf", "aaaf", "kf", "f", "ooooof"] `shouldBe` ["xxxf", "aaaf", "kf", "f", "ooooof"]
    sortMe ["xdxf", "xcxf", "xbxf", "xaxf"] `shouldBe` ["xdxf", "xcxf", "xbxf", "xaxf"]
    sortMe ["xdxf", "xcxa", "xbxf", "xaxf"] `shouldBe` ["xcxa", "xdxf", "xbxf", "xaxf"]
  it "random tests" $ do
    forAll (map (++ "a") <$> (listOf $ listOf1 $ elements ['a' .. 'z'])) $ \xs -> do
      -- print xs
      sortMe xs `shouldBe` xs
