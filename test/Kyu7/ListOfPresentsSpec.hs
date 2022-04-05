module Kyu7.ListOfPresentsSpec where

import Kyu7.ListOfPresents (howManyGifts)
import Test.Hspec

spec :: Spec
spec = do
    describe "Foo" $ do
      it "should return 4" $ do
        howManyGifts 20 [13, 2, 4, 6, 1] `shouldBe` 4
      it "should return 0" $ do
        howManyGifts 0 [1] `shouldBe` 0
