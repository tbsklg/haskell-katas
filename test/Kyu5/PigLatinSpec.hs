module Kyu5.PigLatinSpec where

import Kyu5.PigLatin (pigIt)
import Test.Hspec (Spec, describe, it, shouldBe)

spec :: Spec
spec = do
  it "should work for some examples" $ do
    pigIt "Pig latin is cool" `shouldBe` "igPay atinlay siay oolcay"
    pigIt "This is my string" `shouldBe` "hisTay siay ymay tringsay"
    pigIt "This is my string !" `shouldBe` "hisTay siay ymay tringsay !"
    pigIt "This is my string ?" `shouldBe` "hisTay siay ymay tringsay ?"
