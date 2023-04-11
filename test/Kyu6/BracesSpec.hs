module Kyu6.BracesSpec where
import Kyu6.Braces (validBraces)
import Test.Hspec

spec :: Spec
spec = do
  describe "validBraces" $ do
    it "should work for some examples" $ do
      validBraces "()"             `shouldBe` True
      validBraces "[([)"           `shouldBe` False
      validBraces "())({}}{()][][" `shouldBe` False
      validBraces "({})[({})]"     `shouldBe` True

