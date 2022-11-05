module Kyu7.CatandMouseSpec where

import Kyu7.CatandMouse
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed tests" $ do
    catMouse "C....m" `shouldBe` "Escaped!"
    catMouse "C..m" `shouldBe` "Caught!"
    catMouse "C.....m" `shouldBe` "Escaped!"
    catMouse "C.m" `shouldBe` "Caught!"

-- the following line is optional for 8.2
main = hspec spec
