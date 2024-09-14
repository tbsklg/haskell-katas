module Kyu6.InsideOutSpec where

import Kyu6.InsideOut
import Test.Hspec

spec :: Spec
spec = do
  describe "Inside Out Strings" $ do
    it "Basic tests" $ do
      insideOut "man i need a taxi up to ubud" `shouldBe` "man i ende a atix up to budu"
      insideOut "what time are we climbing up the volcano" `shouldBe` "hwta item are we milcgnib up the lovcona"
      insideOut "take me to semynak" `shouldBe` "atek me to mesykan"
