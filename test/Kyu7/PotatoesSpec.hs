module Kyu7.PotatoesSpec where

import Kyu7.Potatoes (potatoes)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

dotest :: Int -> Int -> Int -> Int -> Spec
dotest p0 w0 p1 expr = 
    it (printf "should return potatoes for %d, %d, %d, result:\n --> %d " p0 w0 p1 expr) $
        potatoes p0 w0 p1`shouldBe` expr

spec :: Spec
spec = do
    describe "potatoes" $ do
        dotest 82 127 80 114
        dotest 93 129 91 100
