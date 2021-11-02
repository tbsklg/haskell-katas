module Kyu7.OperationSpec (spec) where

import Kyu7.Operation (result)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    result [[4]] `shouldBe` 4
    result [[1, 2], [3, 4]] `shouldBe` 21
    result [[7, 1, 5, 8], [2, 1, 4, 9], [3, 2, 4, 7]] `shouldBe` 5376