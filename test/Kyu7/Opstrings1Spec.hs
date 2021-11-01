module Kyu7.Opstrings1Spec where
    
import Kyu7.Opstrings1

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testOpstring1 :: String -> String -> Spec
testOpstring1 r s = 
    it (printf "should return vertMirror for strng: %s \n" (show r)) $
        oper vertMirror r`shouldBe` s

testOpstring2 :: String -> String -> Spec
testOpstring2 r s = 
    it (printf "should return horMirror for strng: %s \n" (show r)) $
        oper horMirror r`shouldBe` s

spec :: Spec
spec = do
    describe "vertMirror" $ do
        testOpstring1 "hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu" "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw"
        testOpstring1 "IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx" "EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP"

    describe "horMirror" $ do
        testOpstring2 "lVHt\nJVhv\nCSbg\nyeCt" "yeCt\nCSbg\nJVhv\nlVHt"
        testOpstring2 "njMK\ndbrZ\nLPKo\ncEYz" "cEYz\nLPKo\ndbrZ\nnjMK"
        