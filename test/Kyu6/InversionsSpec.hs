module Kyu6.InversionsSpec (spec, main) where
import Kyu6.Inversions (countInversions) 
import Control.Applicative
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck

main = hspec spec
spec = describe "countInversions" $ do
  it "returns 0 on an empty list" $
    countInversions ([] :: [()]) `shouldBe` 0
  
  it "works on the examples" $ do
    countInversions [1..4]    `shouldBe` 0
    countInversions [1,3,2,4] `shouldBe` 1
    countInversions [4,1,2,3] `shouldBe` 3
    countInversions [4,3,2,1] `shouldBe` 6

  prop "returns 0 on a sorted list" $ 
    forAll orderedList $ \xs ->
      countInversions (xs :: [Integer]) `shouldBe` 0
      
  prop "returns 0 on a list of repeated elements" $ 
    forAll (replicate <$> arbitrary <*> arbitrary) $ \xs ->
      countInversions (xs :: [Double]) `shouldBe` 0

