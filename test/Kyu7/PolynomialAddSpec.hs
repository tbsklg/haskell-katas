module Kyu7.PolynomialAddSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Kyu7.PolynomialAdd

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "polyAdd" $ do
        it "Passes description case" $ do
            polyAdd [1, 2] [1] `shouldBe` [2, 2]
