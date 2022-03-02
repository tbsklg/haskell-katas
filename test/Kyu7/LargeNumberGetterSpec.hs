module Kyu7.LargeNumberGetterSpec where

import Kyu7.LargeNumberGetter (getLargerNumbers)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "getLargerNumbers" $ do
    it "should work for some examples" $ do
      getLargerNumbers [13, 64, 15, 17, 88] [23, 14, 53, 17, 80] `shouldBe` [23, 64, 53, 17, 88]
      getLargerNumbers [34, -64, 15, 17, 88] [23, 14, 53, 17, 80] `shouldBe` [34, 14, 53, 17, 88]
    
    it "should work when one array is always larger" $ property $
      forAll (vectorOf 10 $ choose (-100, 0)) $ \a ->
        forAll (vectorOf 10 $ choose (1, 100)) $ \b ->
          getLargerNumbers a b `shouldBe` (b :: [Int])
