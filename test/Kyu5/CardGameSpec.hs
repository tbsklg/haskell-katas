module Kyu5.CardGameSpec where

import Kyu5.CardGame (cardGame)
import Test.Hspec (Spec, describe, hspec, it, shouldBe)
import Test.QuickCheck (Gen, choose, forAll, property)

spec :: Spec
spec = do
  describe "cardGame" $ do
    it "should work for sample values" $ do
      cardGame 0 `shouldBe` 0
      cardGame 1 `shouldBe` 1
      cardGame 4 `shouldBe` 3
      cardGame 5 `shouldBe` 2
      cardGame 10 `shouldBe` 8
      cardGame 12 `shouldBe` 9
      cardGame 33 `shouldBe` 6

    it "should work for small random values" $ do
      gcd_prop small

    it "should work for medium random values" $ do
      gcd_prop medium

    it "should work for large random values" $ do
      gcd_prop large
  where
    small, large :: Gen Int
    small = choose (1, 10 ^ 2)
    medium = choose (10 ^ 2 + 1, 10 ^ 5)
    large = choose (10 ^ 5 + 1, 10 ^ 18)
    gcd_prop gen = property $
      forAll gen $ \x ->
        cardGame x `shouldBe` cardGameRef x

-- Reference solution
type TakenCards = Int

type RemainingCards = Int

type Move = (TakenCards, RemainingCards)

cardGameRef :: Int -> Int
cardGameRef 0 = 0
cardGameRef cards = (+) (fst . alice $ cards) . cardGameRef . remaining $ cards
  where
    remaining = snd . bob . snd . alice

    alice = strategy
    bob = strategy

    strategy 0 = (0, 0) :: Move
    strategy x
      | even x && (odd (x - x `div` 2) || x == 4) = (x `div` 2, x `div` 2) :: Move
      | otherwise = (1, x - 1) :: Move
