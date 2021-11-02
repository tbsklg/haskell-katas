module Kyu7.EasylineSpec where

import Kyu7.Easyline (easyLine)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLine :: Integer -> Integer -> Spec
testLine n s = 
  it (printf "should return easyLine for n = %i " n) $
    easyLine n `shouldBe` s
    
spec :: Spec
spec = do
    describe "easyline" $ do
        testLine 7 3432
        testLine 13 10400600
        testLine 17 2333606220
        testLine 19 35345263800