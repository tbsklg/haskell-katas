module Kyu7.CatandMouseSpec where

import Test.Hspec
import Kyu7.CatandMouse

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed tests" $ do
    catMouse "C....m"   `shouldBe` "Escaped!"
    catMouse "C..m"     `shouldBe` "Caught!"
    catMouse "C.....m"  `shouldBe` "Escaped!"
    catMouse "C.m"      `shouldBe` "Caught!"
  
-- the following line is optional for 8.2
main = hspec spec
