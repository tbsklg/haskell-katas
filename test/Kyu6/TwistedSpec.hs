module Kyu6.TwistedSpec where
import Test.Hspec
import Kyu6.Twisted

spec :: Spec
spec = do
    describe "Example Tests" $
        it "should work with example tests" $ do
            sortTwisted37 [1,2,3,4,5,6,7,8,9] `shouldBe` [1,2,7,4,5,6,3,8,9]
            sortTwisted37 [12,13,14]          `shouldBe` [12,14,13]
            sortTwisted37 [9,2,4,7,3]         `shouldBe` [2,7,4,3,9]
