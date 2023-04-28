module Kyu6.PyramidArraySpec (spec) where

import Kyu6.PyramidArray (pyramid)
import Test.Hspec

spec :: Spec
spec = do
  it "basic tests" $ do
    pyramid 0 `shouldBe` []
    pyramid 1 `shouldBe` [[1]]
    pyramid 2 `shouldBe` [[1], [1, 1]]
    pyramid 3 `shouldBe` [[1], [1, 1], [1, 1, 1]]
