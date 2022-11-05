module Kyu7.FindGcfSpec where

import Kyu7.FindGcf (findGcf)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example Tests" $
    it "Should work for example tests" $ do
      findGcf 2 4 `shouldBe` 2
      findGcf 8 20 `shouldBe` 4
      findGcf 5 13 `shouldBe` 1
