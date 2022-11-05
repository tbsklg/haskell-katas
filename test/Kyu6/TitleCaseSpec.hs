module Kyu6.TitleCaseSpec where

import Kyu6.TitleCase
import Test.Hspec

spec :: Spec
spec = do
  describe "titleCase" $ do
    it "Example test" $ do
      titleCase "a an the of" "a clash of KINGS" `shouldBe` "A Clash of Kings"
