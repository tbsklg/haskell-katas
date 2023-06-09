module Kyu6.NextVersionSpec where
import Test.Hspec

import Kyu6.NextVersion (nextVersion)

spec :: Spec
spec = do
  describe "Example Test Cases" $ do
    it "increments simple case" $ nextVersion "1.2.3" `shouldBe` "1.2.4"
    it "increments with leading 0" $ nextVersion "0.9.9" `shouldBe` "1.0.0"
    it "increments single number" $ nextVersion "1" `shouldBe` "2"
    it "increments long version number" $ nextVersion "1.2.3.4.5.6.7.8" `shouldBe` "1.2.3.4.5.6.7.9"
    it "increments major version" $ nextVersion "9.9" `shouldBe` "10.0"
