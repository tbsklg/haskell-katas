module Kyu6.DigPowSpec where
import Kyu6.DigPow
import Test.Hspec
import Test.HUnit

spec :: Spec
spec = do
    describe "playDigits" $ do
        it "1st series" $ do
            digpow 89 1 `shouldBe` 1
            digpow 92 1 `shouldBe` -1
            digpow 46288 3 `shouldBe` 51
