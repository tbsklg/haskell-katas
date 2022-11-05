module Kyu7.PasswordMakerSpec (spec) where

import Kyu7.PasswordMaker (makePassword)
import Test.Hspec

spec = do
  it "handles a couple of fixed tests" $ do
    makePassword "Give me liberty or give me death" `shouldBe` "Gml0gmd"
    makePassword "Keep Calm and Carry On" `shouldBe` "KCaC0"
