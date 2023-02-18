module Kyu6.WeIrDStRiNgCaSeSpec where
import Kyu6.WeIrDStRiNgCaSe (toWeirdCase)
import Test.Hspec

spec :: Spec
spec = do
  describe "toWeirdCase" $ do
    it "should return the correct value for a single word" $ do
      toWeirdCase "This" `shouldBe` "ThIs"
      toWeirdCase "is"   `shouldBe` "Is"
    it "should return the correct value for multiple words" $ do
      toWeirdCase "This is a test" `shouldBe` "ThIs Is A TeSt"

