module Kyu6.PileOfCubesSpec (spec, main) where
import Kyu6.PileOfCubes (findNb)

import Test.Hspec
import Text.Printf (printf)

testFindNb :: Integer -> Integer -> Spec
testFindNb m r = 
    it (printf "m %i " m) $
        findNb m `shouldBe` r
    
main = hspec spec
spec = do
    describe "Solution" $ do
        testFindNb  4183059834009 2022
        testFindNb  24723578342962 ((-1))
        testFindNb  135440716410000 4824
        testFindNb  40539911473216 3568

