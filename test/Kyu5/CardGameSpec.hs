module Kyu5.CardGameSpec where

import Kyu5.CardGame (cardGame)
import Test.Hspec ( hspec, it, shouldBe, Spec )

spec :: Spec
spec = do
    it "should solve card game" $ do
        cardGame 10 `shouldBe` 8
        cardGame 4 `shouldBe` 3
        cardGame 5 `shouldBe` 2
        cardGame 12 `shouldBe` 9
        cardGame 33 `shouldBe` 6
        cardGame 100000000000 `shouldBe` 99999999950
