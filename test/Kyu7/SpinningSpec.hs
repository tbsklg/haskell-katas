module Kyu7.SpinningSpec where
    
import Kyu7.Spinning (spinWords)
import Test.Hspec

spec :: Spec
spec = do
  describe "spinWords" $ do
    it "should work for some examples" $ do
      spinWords "Hey fellow warriors" `shouldBe` "Hey wollef sroirraw"
      spinWords "Test"                `shouldBe` "Test"
      spinWords "Example"             `shouldBe` "elpmaxE"
      spinWords "Test Example"        `shouldBe` "Test elpmaxE"