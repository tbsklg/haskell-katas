module Kyu7.SearchForLettersSpec (spec) where

import Kyu7.SearchForLetters (search)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    search "a **&  bZ" `shouldBe` "11000000000000000000000001"
