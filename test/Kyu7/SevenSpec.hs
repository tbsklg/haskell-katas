module Kyu7.SevenSpec (spec, main) where

import Kyu7.Seven ( seven )
import Test.Hspec ( hspec, describe, it, shouldBe, Spec )
import Text.Printf (printf)

testSeven :: Integer -> (Integer, Int) -> Spec
testSeven m s = 
  it (printf "should return seven where m: %d " m) $
    seven m `shouldBe` s

main = hspec spec
spec = do
    describe "Basic Tests" $ do        
        testSeven 1603 (7, 2)
        testSeven 371 (35, 1)
        testSeven 483 (42, 1)
