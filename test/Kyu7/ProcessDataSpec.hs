module Kyu7.ProcessDataSpec where

import Kyu7.ProcessData (processData)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      processData [[2, 5], [3, 4], [8, 7]] `shouldBe` 3
      processData [[2, 9], [2, 4], [7, 5]] `shouldBe` 28