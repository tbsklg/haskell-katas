module Kyu7.Squares2Spec where

import Kyu7.Squares2 (squares)
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

spec :: Spec
spec = do
  describe "squares" $ do
    it "should work on the given examples" $ do
      squares 2 5 `shouldBe` [2, 4, 16, 256, 65536]
      squares 3 3 `shouldBe` [3, 9, 81]

    prop "returns the empty list if n = 0" $ \x ->
      squares x 0 `shouldBe` []

    prop "returns the empty list if n < 0" $ \x (Positive n') ->
      squares x (negate n') `shouldBe` []

    prop "returns the element if n = 1" $ \x ->
      squares x 1 `shouldBe` [x]

    prop "returns the element and it's square if n = 2" $ \x ->
      squares x 2 `shouldBe` [x, x ^ 2]

    prop "returns a list of correct length" $ \n ->
      squares 1 n `shouldBe` replicate n 1
