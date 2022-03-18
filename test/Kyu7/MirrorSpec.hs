module Kyu7.MirrorSpec (spec) where

import Kyu7.Mirror (mirror)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    mirror [] `shouldBe` []
    mirror [1] `shouldBe` [1]
    mirror [2, 1] `shouldBe` [1, 2, 1]
    mirror [2, 3, 1] `shouldBe` [1, 2, 3, 2, 1]
    mirror [-8, 42, 18, 0, -16] `shouldBe` [-16, -8, 0, 18, 42, 18, 0, -8, -16]
