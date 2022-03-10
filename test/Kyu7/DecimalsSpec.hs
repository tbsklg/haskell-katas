module Kyu7.DecimalsSpec where

import Kyu7.Decimals (twoDecimalPlaces)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "twoDecimalPlaces" $ do
    it "works for some examples" $ do
      twoDecimalPlaces 4.1537212 `shouldBe` 4.15
      twoDecimalPlaces 173735326.3783732637948948 `shouldBe` 173735326.37
      twoDecimalPlaces (-12.3456) `shouldBe` (-12.34)
    
    it "never differs more than 0.01 from the original number" $ property $ 
      forAll (choose (-1e+5, 1e+5)) $ \x ->
        twoDecimalPlaces x `shouldSatisfy` (\y -> abs (y - x) <= 0.01)
