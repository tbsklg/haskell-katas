module Kyu7.AutomorphicSpec where

import Kyu7.Automorphic
import Test.Hspec

spec :: Spec
spec = do
  it "works on a few fixed cases " $ do
    automorphic 1 `shouldBe` "Automorphic"
    automorphic 3 `shouldBe` "Not!!"
    automorphic 6 `shouldBe` "Automorphic"
    automorphic 9 `shouldBe` "Not!!"
    automorphic 25 `shouldBe` "Automorphic"
    automorphic 53 `shouldBe` "Not!!"
    automorphic 76 `shouldBe` "Automorphic"
    automorphic 95 `shouldBe` "Not!!"
    automorphic 625 `shouldBe` "Automorphic"
    automorphic 225 `shouldBe` "Not!!"
    automorphic 1 `shouldBe` "Automorphic"
