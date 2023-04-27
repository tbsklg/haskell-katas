module Kyu6.PlayPassSpec where

import Kyu6.PlayPass
import Test.Hspec
import Text.Printf (printf)

testComplement :: String -> Int -> String -> Spec
testComplement s0 n s =
  it (printf "should return the passphrase for %s %i" s0 n) $
    playPass s0 n `shouldBe` s

spec :: Spec
spec = do
  describe "playPass" $ do
    testComplement "I LOVE YOU!!!" 1 "!!!vPz fWpM J"

    testComplement
      "MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015"
      2
      "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO"
