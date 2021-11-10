module Kyu7.ValidatewordSpec (spec, main) where
import Kyu7.Validateword (validateWord)  

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testValid :: String -> Bool -> Spec
testValid s u = 
    it (printf "should return validateWord for s : %s " s) $
        validateWord s `shouldBe` u

main = hspec spec
spec = do
    
    describe "validateWord" $ do
        testValid "abcabc" True
        testValid "abc123" True
        testValid "abcabcd" False
        testValid "abc!abc!" True
        testValid "abc!abc" False
        testValid "Abcabc" True
        testValid "AbcabcC" False
        