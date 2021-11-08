module Kyu7.SlapheadSpec where

import Test.Hspec
import Test.QuickCheck
import Kyu7.Slaphead

spec :: Spec
spec = do
  describe "bald" $ do
    it "works on fixed cases" $ do
      bald "/---------"       `shouldBe` ("----------", "Unicorn!")
      bald "/-----/-"         `shouldBe` ("--------", "Homer!")
      bald "--/--/---/-/---"  `shouldBe` ("---------------", "Careless!")

