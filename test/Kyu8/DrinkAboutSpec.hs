module Kyu8.DrinkAboutSpec where

import Kyu8.DrinkAbout (peopleWithAgeDrink)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "example tests" $ do
    peopleWithAgeDrink 30 `shouldBe` "drink whisky"
    peopleWithAgeDrink 20 `shouldBe` "drink beer"
    peopleWithAgeDrink 18 `shouldBe` "drink beer"
    peopleWithAgeDrink 17 `shouldBe` "drink coke"
    peopleWithAgeDrink 13 `shouldBe` "drink toddy"
