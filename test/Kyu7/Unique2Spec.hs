module Kyu7.Unique2Spec where

import Kyu7.Unique2 (projectPartners)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "projectPartners" $ do
    it "should work for some examples" $ do
      projectPartners 2 `shouldBe`  1
      projectPartners 3 `shouldBe`  3
      projectPartners 4 `shouldBe`  6
      projectPartners 5 `shouldBe` 10
    
    it "should terminate in (almost) constant time" $ do
      property $ forAll (choose (10^10, 10^100)) $ \n ->
        projectPartners n `shouldSatisfy` (>0)
