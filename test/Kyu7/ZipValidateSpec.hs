module Kyu7.ZipValidateSpec where

import Kyu7.ZipValidate
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "zipValidate" $ do
    it "should work on valid postcodes" $ do
      zipValidate "142784" `shouldBe` True
      zipValidate "210003" `shouldBe` True
      zipValidate "676742" `shouldBe` True

    it "should also test invalid postcodes" $ do
      zipValidate "111" `shouldBe` False
      zipValidate "AA5590" `shouldBe` False
      zipValidate "775255" `shouldBe` False
      zipValidate "\n245980" `shouldBe` False

    it "should pass random valid zip codes" $ do
      property $
        forAll (vectorOf 6 $ elements "12346") $ \zip ->
          zipValidate zip

    it "should fail on some random invalid zip codes" $ do
      property $
        forAll (vectorOf 6 $ choose ('a', 'z')) $ \zip ->
          not $ zipValidate zip
