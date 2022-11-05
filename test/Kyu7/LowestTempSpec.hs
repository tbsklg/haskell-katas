module Kyu7.LowestTempSpec where

import Kyu7.LowestTemp (lowestTemp)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      lowestTemp "" `shouldBe` Nothing
      lowestTemp "-1 50 -4 20 22 -7 0 10 -8" `shouldBe` (Just (-8))
