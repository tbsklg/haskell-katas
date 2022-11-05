module Kyu7.AddingUpLettersSpec where

import Kyu7.AddingUpLetters (addLetters)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    addLetters ['a', 'b', 'c'] `shouldBe` 'f'
    addLetters ['z'] `shouldBe` 'z'
    addLetters ['a', 'b'] `shouldBe` 'c'
    addLetters ['c'] `shouldBe` 'c'
    addLetters ['z', 'a'] `shouldBe` 'a'
    addLetters ['y', 'c', 'b'] `shouldBe` 'd'
    addLetters [] `shouldBe` 'z'
