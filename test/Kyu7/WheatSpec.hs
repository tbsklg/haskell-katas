module Kyu7.WheatSpec where
-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Test.Hspec
import Kyu7.Wheat

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
    describe "finds the square" $ do
        it "checks some fixed cases" $ do
          squaresNeeded 0 `shouldBe` 0
          squaresNeeded 1 `shouldBe` 1
          squaresNeeded 2 `shouldBe` 2
          squaresNeeded 3 `shouldBe` 2
          squaresNeeded 4 `shouldBe` 3

-- the following line is optional for 8.2
main = hspec spec
