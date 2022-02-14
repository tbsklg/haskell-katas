module Kyu7.IsSortedAndHowSpec where

import Kyu7.IsSortedAndHow (isSortedAndHow)
import Test.Hspec

spec :: Spec
spec = do
    describe "Example Tests" $ do
        it "[1,2,3,4,5]" $ isSortedAndHow [1,2,3,4,5] `shouldBe` "yes, ascending"
        it "[1,2,2,4,5]" $ isSortedAndHow [1,2,2,4,5] `shouldBe` "yes, ascending"
        it "[5,4,3,2,1]" $ isSortedAndHow [5,4,3,2,1] `shouldBe` "yes, descending"
        it "[5,4,3,3,1]" $ isSortedAndHow [5,4,3,3,1] `shouldBe` "yes, descending"
        it "[1,2,1,2,1]" $ isSortedAndHow [1,2,1,2,1] `shouldBe` "no"
