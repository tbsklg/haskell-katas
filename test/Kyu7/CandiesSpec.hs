module Kyu7.CandiesSpec where

-- Tests can be written using Hspec http://hspec.github.io/
-- Replace this with your own tests.

import Kyu7.Candies
import Test.Hspec

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "adds Nums" $ do
    distribute (-5) 0 `shouldBe` []
    distribute 0 0 `shouldBe` []
    distribute 5 0 `shouldBe` []
    distribute 10 0 `shouldBe` []
    distribute 15 0 `shouldBe` []
    distribute (-5) (-5) `shouldBe` []
    distribute 0 (-5) `shouldBe` []
    distribute 5 (-5) `shouldBe` []
    distribute 10 (-5) `shouldBe` []
    distribute 15 (-5) `shouldBe` []
    distribute (-5) 10 `shouldBe` [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    distribute 0 10 `shouldBe` [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    distribute 5 10 `shouldBe` [1, 1, 1, 1, 1, 0, 0, 0, 0, 0]
    distribute 10 10 `shouldBe` [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    distribute 15 10 `shouldBe` [2, 2, 2, 2, 2, 1, 1, 1, 1, 1]

-- the following line is optional for 8.2
main = hspec spec
