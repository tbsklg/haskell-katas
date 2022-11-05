module Kyu7.PolynomialAddSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.PolynomialAdd
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  describe "polyAdd" $ do
    it "Passes description case" $ do
      polyAdd [1, 2] [1] `shouldBe` [2, 2]
