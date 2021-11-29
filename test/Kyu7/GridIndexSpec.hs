module Kyu7.GridIndexSpec (spec) where

import Kyu7.GridIndex (gridIndex)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    gridIndex [['m', 'y', 'e'], ['x', 'a', 'm'], ['p', 'l', 'e']] [1, 2, 3, 4, 5, 6, 7, 8, 9] `shouldBe` "myexample"
    gridIndex [['m', 'y', 'e'], ['x', 'a', 'm'], ['p', 'l', 'e']] [1, 5, 6] `shouldBe` "mam"
    gridIndex [['m', 'y', 'e'], ['x', 'a', 'm'], ['p', 'l', 'e']] [1, 3, 7, 8] `shouldBe` "mepl"
    gridIndex [['h', 'e', 'l', 'l'], ['o', 'c', 'o', 'd'], ['e', 'w', 'a', 'r'], ['r', 'i', 'o', 'r']] [5, 7, 9, 3, 6, 6, 8, 8, 16, 13] `shouldBe` "ooelccddrr"
