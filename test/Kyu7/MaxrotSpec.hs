module Kyu7.MaxrotSpec where
import Kyu7.Maxrot (maxRot)   

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testMaxrot :: Integer -> Integer -> Spec
testMaxrot n u = 
    it (printf "should return maxRot for n: %d " n) $
        maxRot n `shouldBe` u
spec :: Spec
spec = do
    describe "maxRot" $ do
        testMaxrot 38458215 85821534
        testMaxrot 195881031 988103115
        testMaxrot 896219342 962193428
        testMaxrot 69418307 94183076
