module Kyu7.AlternateSpec (spec, main) where
import Kyu7.Alternate (alternateSqSum)

import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "alternateSqSum" $ do
    it "should return Nothing on the empty list" $
      alternateSqSum [] `shouldBe` Nothing
    
    it "should for on the example" $ 
      alternateSqSum [1..5] `shouldBe` Just 29
      
    it "should work for some other examples" $ do      
      alternateSqSum [-1,0,-3,0,-5,3]       `shouldBe` Just 0
      alternateSqSum [-1,2,-3,4,-5]         `shouldBe` Just 11
      alternateSqSum [1,2,3,4,5,6,7,8,9,10] `shouldBe` Just 245
    
    it "should return something on a non-empty list" $ 
      property $ \(NonEmpty xs) ->
        alternateSqSum xs `shouldSatisfy` maybe False (const True)
