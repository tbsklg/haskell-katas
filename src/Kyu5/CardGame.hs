module Kyu5.CardGame (cardGame) where

type TakenCards = Int

type RemainingCards = Int

type Move = (TakenCards, RemainingCards)

cardGame :: Int -> Int
cardGame 0 = 0
cardGame cards = (+) (fst . alice $ cards) . cardGame . remaining $ cards
  where
    remaining = snd . bob . snd . alice

    alice x
      | even x && (odd (x - x `div` 2) || x == 4) = (x `div` 2, x `div` 2) :: Move
      | otherwise = (1, x - 1) :: Move

    bob x
      | even x = (x `div` 2, x `div` 2) :: Move
      | otherwise = (1, x - 1) :: Move
