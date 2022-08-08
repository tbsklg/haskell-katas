module Kyu7.BinaryStringSpec where

import Kyu7.BinaryString (binStr)
import Test.Hspec

spec :: Spec
spec = do
    describe "Binary String" $ do
      it "Example Tests" $ do
        binStr "0101" `shouldBe` 3
        binStr "10000" `shouldBe` 2
        binStr "0000000000" `shouldBe` 0
        binStr "1111111111" `shouldBe` 1
        binStr "10101010101010" `shouldBe` 14
        binStr "11111000011111" `shouldBe` 3
        binStr "000001111100000" `shouldBe` 2
        binStr "111000000000" `shouldBe` 2
        binStr "00000000111111111" `shouldBe` 1
        binStr "1010101011111111111111000000000" `shouldBe` 10
