module Kyu7.BattleSpec where

import Kyu7.Battle
import Test.Hspec

spec :: Spec
spec = do
  it "works on some simple cases" $ do
    battle "ONE" "TWO" `shouldBe` "TWO"
    battle "ONE" "NEO" `shouldBe` "Tie!"
    battle "FOUR" "FIVE" `shouldBe` "FOUR"
    battle "QWERTY" "ASDFGH" `shouldBe` "QWERTY"
    battle "QAZWSX" "VFREDC" `shouldBe` "QAZWSX"
    battle "SKDUFR" "QWEVPD" `shouldBe` "QWEVPD"
    battle "PLOKIJ" "ZNMASK" `shouldBe` "ZNMASK"
    battle "FREDAS" "TSOBES" `shouldBe` "TSOBES"
