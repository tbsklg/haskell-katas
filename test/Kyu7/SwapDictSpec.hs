module Kyu7.SwapDictSpec where

import Data.List (sort)
import qualified Data.Map as Map
import Kyu7.SwapDict (swapDict)
import Test.Hspec

spec :: Spec
spec = do
  it "the example from the description" $ do
    let input =
          Map.fromList
            [ ("Ice", "Cream"),
              ("Age", "21"),
              ("Light", "Cream"),
              ("Double", "Cream")
            ]
    let expected =
          Map.fromList
            [ ("Cream", ["Ice", "Double", "Light"]),
              ("21", ["Age"])
            ]
    sort <$> swapDict input `shouldBe` sort <$> expected
