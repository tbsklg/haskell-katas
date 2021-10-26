module Kyu7.PonyExpressSpec where

import Kyu7.PonyExpress
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "samples" $ do
    it "sample Tests" $ do
      riders [18, 15] `shouldBe` 1
      riders [43, 23, 40, 13] `shouldBe` 2
      riders [33, 8, 16, 47, 30, 30, 46] `shouldBe` 3
      riders [6, 24, 6, 8, 28, 8, 23, 47, 17, 29, 37, 18, 40, 49] `shouldBe` 4

-- the following line is optional for 8.2
main = hspec spec
