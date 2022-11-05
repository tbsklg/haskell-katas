module Kyu7.NumberPropertiesSpec where

import Kyu7.NumberProperties (Property (..), numberProperty)
import Test.Hspec
import Test.QuickCheck (Gen, arbitrary, forAll, property)

spec :: Spec
spec = do
  describe "numberProperty" $ do
    it "should work for some examples" $ do
      numberProperty 1 `shouldBe` Property False False False
      numberProperty 2 `shouldBe` Property True True False
      numberProperty 3 `shouldBe` Property True False False
      numberProperty 7 `shouldBe` Property True False False
      numberProperty 10 `shouldBe` Property False True True
      numberProperty (-7) `shouldBe` Property False False False
      numberProperty (-10) `shouldBe` Property False True True
    it "should work for multiples of 10" $ do
      property $
        forAll (fmap (10 *) arbitrary :: Gen Integer) $ \n ->
          numberProperty n `shouldBe` Property False True True
