module Kyu7.CategorizeSpec where

import Control.Applicative
import Kyu7.Categorize (Membership (..), openOrSenior)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "openOrSenior" $ do
    it "should work for some examples" $ do
      openOrSenior [] `shouldBe` []
      openOrSenior [(18, 20)] `shouldBe` [Open]
      openOrSenior [(55, 20)] `shouldBe` [Senior]
      openOrSenior [(55, 7)] `shouldBe` [Open]
      openOrSenior [(55, 7), (55, 8), (54, 9)] `shouldBe` [Open, Senior, Open]

    it "should work on some random lists, single membership type list" $
      let k al au hl hu m =
            property $
              forAll (listOf $ (,) <$> choose (al, au) <*> choose (hl, hu)) $ \xs ->
                openOrSenior xs `shouldSatisfy` all (== m)
       in conjoin
            [ k 55 100 8 26 Senior,
              k 0 100 (-2) 7 Open
            ]
