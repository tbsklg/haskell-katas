module Kyu7.MakevalleySpec where
import Kyu7.Makevalley (makeValley)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testValley :: [Int] -> [Int] -> Spec
testValley r s = 
    it (printf "should return makeValley for arr: %s \n" (show r)) $
        makeValley r `shouldBe` s

spec :: Spec
spec = do
    describe "makeValley 1" $ do
        testValley [77] [77]
        testValley [] []
        testValley [98, 93, 77, 54, 31, 26, 24, -62] [98, 77, 31, 24, -62, 26, 54, 93]
        testValley [99, 96, 57, 54, 50, 39, 28, -61] [99, 57, 50, 28, -61, 39, 54, 96]
        testValley [93, 83, 64, 58, 33, 30] [93, 64, 33, 30, 58, 83]
        testValley [86, 80, 79, 33, 31, -78] [86, 79, 31, -78, 33, 80]
        testValley [70, -25] [70, -25]
        testValley [73, 62, 49, 33, 32, 26, -33, -55] [73, 49, 32, -33, -55, 26, 33, 62]
        testValley [91, 60, 32] [91, 32, 60]
        testValley [90, 78, 47, 33, 27, 16, -91] [90, 47, 27, -91, 16, 33, 78]
    