module Kyu5.TosmallestSpec where

import Kyu5.Tosmallest (smallest)
import Test.Hspec (Spec, describe, it, shouldBe)
import Test.QuickCheck ()
import Text.Printf (printf)

dotest :: Integer -> (Integer, Int, Int) -> Spec
dotest n s =
  it (printf "should return smallest for n : %d --> %s \n" n (show s)) $
    smallest n `shouldBe` s

spec :: Spec
spec = do
  describe "basic" $ do
    dotest 261235 (126235, 2, 0)
    dotest 209917 (29917, 0, 1)
    dotest 285365 (238565, 3, 1)
    dotest 269045 (26945, 3, 0)
    dotest 296837 (239687, 4, 1)

  describe "advanced" $ do
    dotest 187863002809 (18786300289, 10, 0)
    dotest 199819884756 (119989884756, 4, 0)
    dotest 935855753 (358557539, 0, 8)
    dotest 90104616173247480383 (1046161732474803839, 0, 19)
    dotest 111111111 (111111111, 0, 0)
