module Kyu7.AreaCodeSpec where

import Kyu7.AreaCode (areaCode)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Test" $
    it "should work with example tests" $ do
      areaCode "The supplier's phone number is (555) 867-5309" `shouldBe` "555"
      areaCode "Grae's cell number used to be (123) 456-7890" `shouldBe` "123"
      areaCode "The 102nd district court's fax line is (124) 816-3264" `shouldBe` "124"
