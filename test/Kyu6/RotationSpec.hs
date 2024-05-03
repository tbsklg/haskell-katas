module Kyu6.RotationSpec (spec, main) where

import Control.Monad (forM_)
import Kyu6.Rotation (shiftedDiff)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = describe "shiftedDiff" $ do
  it "returns 0 for equal strings" $ property $ \(NonEmpty xs) ->
    shiftedDiff xs xs `shouldBe` 0
  it "returns -1 for unequal strings" $ property $ \x (NonEmpty xs) ->
    shiftedDiff (x : xs) xs `shouldBe` (-1)

  let values =
        [ ("coffee", "eecoff", 2),
          ("eecoff", "coffee", 4),
          ("Moose", "moose", -1),
          ("isn't", "'tisn", 2),
          ("Esham", "Esham", 0),
          (" ", " ", 0),
          ("hoop", "pooh", -1),
          ("  ", " ", -1)
        ]
  forM_ values $ \(a, b, e) ->
    it ("returns " ++ show e ++ " on " ++ show a ++ " " ++ show b) $
      shiftedDiff a b `shouldBe` e
