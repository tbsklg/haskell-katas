module Kyu7.SortByAreaSpec (spec) where

import Kyu7.SortByArea (Shape (..), sortByArea)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    sortByArea [Rectangle 4.23 6.43, Circle 1.23, Circle 3.444, Rectangle 1.342 3.212]
      `shouldBe` [Rectangle 1.342 3.212, Circle 1.23, Rectangle 4.23 6.43, Circle 3.444]
    sortByArea [Rectangle 2 5, Circle 6] `shouldBe` [Rectangle 2 5, Circle 6]
    sortByArea [] `shouldBe` []
