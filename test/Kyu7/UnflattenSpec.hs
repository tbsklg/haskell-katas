module Kyu7.UnflattenSpec where

import Kyu7.Unflatten
import Test.Hspec

spec :: Spec
spec = do
  it "basic tests " $ do
    unflatten [3, 5, 2, 1] `shouldBe` [[3, 5, 2], [1]]
    unflatten [1, 4, 5, 2, 1, 2, 4, 5, 2, 6, 2, 3, 3] `shouldBe` [[1], [4, 5, 2, 1], [2], [4, 5, 2, 6], [2], [3, 3]]
  it "extended tests " $ do
    unflatten [1, 1, 1, 1] `shouldBe` [[1], [1], [1], [1]]
    unflatten [1] `shouldBe` [[1]]
    unflatten [99, 1, 1, 1] `shouldBe` [[99, 1, 1, 1]]
    unflatten [3, 1, 1, 3, 1, 1] `shouldBe` [[3, 1, 1], [3, 1, 1]]

-- the following line is optional for 8.2
main = hspec spec
