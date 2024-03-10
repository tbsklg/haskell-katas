module Kyu5.BakerSpec where

import Control.Applicative
import Data.Function (on)
import Data.List (nubBy)
import Kyu5.Baker (cakes)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "cakes" $ do
    it "should work for some small examples" $ do
      cakes [("flour", 500), ("sugar", 200), ("eggs", 1)] [("flour", 1200), ("sugar", 1200), ("eggs", 5), ("milk", 200)] `shouldBe` 2
      cakes [("apples", 3), ("flour", 300), ("sugar", 150), ("milk", 100), ("oil", 100)] [("sugar", 500), ("flour", 2000), ("milk", 2000)] `shouldBe` 0

    it "should work if we have everything there" $ do
      let ingredients = ["flour", "eggs", "oil", "milk", "apples", "sugar", "cream", "pears", "butter", "nuts", "chocolate", "cocoa", "crumbles"]
      let positive = arbitrary `suchThat` (> 0)
      property $
        forAll (zip <$> (listOf1 $ elements ingredients) <*> listOf1 positive) $ \recipe' ->
          let recipe = nubBy ((==) `on` fst) recipe'
           in cakes recipe recipe `shouldBe` 1
