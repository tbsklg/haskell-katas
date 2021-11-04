module Kyu7.VowelIndicesSpec where
import Kyu7.VowelIndices (vowelIndices)   

import Test.Hspec
import Text.Printf (printf)

testVowelIndices :: String -> [Integer] -> Spec
testVowelIndices word indices = 
    it (printf "should return indices for word: %s " word) $
        vowelIndices word `shouldBe` indices

spec :: Spec
spec = do
    describe "vowelIndices" $ do
      testVowelIndices "super" [2,4]