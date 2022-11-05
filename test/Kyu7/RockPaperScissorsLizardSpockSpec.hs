module Kyu7.RockPaperScissorsLizardSpockSpec (spec) where

import Kyu7.RockPaperScissorsLizardSpock (RPSLS (..), rpsls)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "Player 1 win!" $ do
      rpsls Rock Lizard `shouldBe` GT
      rpsls Paper Rock `shouldBe` GT
      rpsls Scissors Lizard `shouldBe` GT
      rpsls Lizard Paper `shouldBe` GT
      rpsls Spock Rock `shouldBe` GT
    it "Player 2 win!" $ do
      rpsls Lizard Scissors `shouldBe` LT
      rpsls Spock Lizard `shouldBe` LT
      rpsls Paper Lizard `shouldBe` LT
      rpsls Scissors Spock `shouldBe` LT
      rpsls Rock Spock `shouldBe` LT
    it "Draw!" $ do
      rpsls Rock Rock `shouldBe` EQ
      rpsls Spock Spock `shouldBe` EQ
