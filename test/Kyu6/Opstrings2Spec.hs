module Kyu6.Opstrings2Spec where

import Kyu6.Opstrings2
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testOpstring0 :: String -> String -> Spec
testOpstring0 r s =
  it (printf "should return rot for strng: %s \n" (show r)) $
    oper rot r `shouldBe` s

testOpstring1 :: String -> String -> Spec
testOpstring1 r s =
  it (printf "should return selfieAndRot for strng: %s \n" (show r)) $
    oper selfieAndRot r `shouldBe` s

spec :: Spec
spec = do
  describe "rot" $ do
    testOpstring0 "rkKv\ncofM\nzXkh\nflCB" "BClf\nhkXz\nMfoc\nvKkr"
    testOpstring0 "fijuoo\nCqYVct\nDrPmMJ\nerfpBA\nkWjFUG\nCVUfyL" "LyfUVC\nGUFjWk\nABpfre\nJMmPrD\ntcVYqC\nooujif"

  describe "selfieAndRot" $ do
    testOpstring1
      "xZBV\njsbS\nJcpN\nfVnP"
      "xZBV....\njsbS....\nJcpN....\nfVnP....\n....PnVf\n....NpcJ\n....Sbsj\n....VBZx"
    testOpstring1
      "uLcq\nJkuL\nYirX\nnwMB"
      "uLcq....\nJkuL....\nYirX....\nnwMB....\n....BMwn\n....XriY\n....LukJ\n....qcLu"
