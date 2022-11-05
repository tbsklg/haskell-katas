module Kyu7.AccumuleSpec where

import Data.Char
import Data.List
import Kyu7.Accumule (accum)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testAccum :: [Char] -> [Char] -> Spec
testAccum s u =
  it (printf "should return accum for s: %s " s) $
    accum s `shouldBe` u

spec :: Spec
spec = do
  describe "Accum: Basic Tests" $ do
    testAccum "ZpglnRxqenU" "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu"
    testAccum "NyffsGeyylB" "N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb"
    testAccum "MjtkuBovqrU" "M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu"
    testAccum "EvidjUnokmM" "E-Vv-Iii-Dddd-Jjjjj-Uuuuuu-Nnnnnnn-Oooooooo-Kkkkkkkkk-Mmmmmmmmmm-Mmmmmmmmmmm"
    testAccum "HbideVbxncC" "H-Bb-Iii-Dddd-Eeeee-Vvvvvv-Bbbbbbb-Xxxxxxxx-Nnnnnnnnn-Cccccccccc-Ccccccccccc"
