module Kyu7.SlapheadSpec where

import Kyu7.Slaphead
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "bald" $ do
    it "works on fixed cases" $ do
      bald "/---------" `shouldBe` ("----------", "Unicorn!")
      bald "/-----/-" `shouldBe` ("--------", "Homer!")
      bald "--/--/---/-/---" `shouldBe` ("---------------", "Careless!")
