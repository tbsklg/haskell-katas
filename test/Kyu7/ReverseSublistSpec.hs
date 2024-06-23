module Kyu7.ReverseSublistSpec where

import Kyu7.ReverseSublist
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    revSub [] `shouldBe` []
    revSub [2, 4] `shouldBe` [4, 2]
    revSub [2, 4, 3] `shouldBe` [4, 2, 3]
    revSub [2, 4, 3, 10, 2] `shouldBe` [4, 2, 3, 2, 10]
