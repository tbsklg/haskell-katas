module Kyu7.KeypadHorrorSpec (spec) where

import Kyu7.KeypadHorror (computerToPhone)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    computerToPhone "0789456123" `shouldBe` "0123456789"
    computerToPhone "000" `shouldBe` "000"
    computerToPhone "94561" `shouldBe` "34567"
    computerToPhone "" `shouldBe` ""
