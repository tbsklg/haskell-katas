{-# LANGUAGE OverloadedStrings #-}

module Kyu7.FireFightSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Control.Monad (forM_)
import Kyu7.FireFight
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "basic tests" $ do
    it "replaces Fire with ~~" $ do
      let cases =
            [ ( "Boat Rudder Mast Boat Hull Water Fire Boat Deck Hull Fire Propeller Deck Fire Deck Boat Mast",
                "Boat Rudder Mast Boat Hull Water ~~ Boat Deck Hull ~~ Propeller Deck ~~ Deck Boat Mast"
              ),
              ( "Mast Deck Engine Water Fire",
                "Mast Deck Engine Water ~~"
              ),
              ( "Fire Deck Engine Sail Deck Fire Fire Fire Rudder Fire Boat Fire Fire Captain",
                "~~ Deck Engine Sail Deck ~~ ~~ ~~ Rudder ~~ Boat ~~ ~~ Captain"
              )
            ]

      forM_ cases $ \(input, expected) -> do
        (fire_fight input) `shouldBe` expected

-- the following line is optional for 8.2
main = hspec spec
