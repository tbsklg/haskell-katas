module Kyu7.ChangingLettersSpec (spec) where

import Kyu7.ChangingLetters (swap)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    swap "" `shouldBe` ""
    swap "   @@@" `shouldBe` "   @@@"
    swap "HelloWorld!" `shouldBe` "HEllOWOrld!"
    swap "Sunday" `shouldBe` "SUndAy"
    swap "Codewars" `shouldBe` "COdEwArs"
    swap "Monday" `shouldBe` "MOndAy"
    swap "Friday" `shouldBe` "FrIdAy"
    swap "abracadabra" `shouldBe` "AbrAcAdAbrA"
    swap "AbrAcAdAbrA" `shouldBe` "AbrAcAdAbrA"
    swap "ABRACADABRA" `shouldBe` "ABRACADABRA"
    swap "aBRaCaDaBRa" `shouldBe` "ABRACADABRA"
