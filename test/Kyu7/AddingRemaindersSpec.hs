module Kyu7.AddingRemaindersSpec where

import Test.Hspec
import Kyu7.AddingRemainders (solve)

spec :: Spec
spec = do
    describe "Tests" $ do
        it "Sample tests" $ do
            solve [2,7,5,9,100,34,32,0] 3  `shouldBe` ([4,8,7,9,101,35,34,0])
            solve [] 2                     `shouldBe` ( [] )
            solve [1000,999,998,997] 5     `shouldBe` ([1000,1003,1001,999])
            solve [0,0,0,0] 5              `shouldBe` ([0,0,0,0])
