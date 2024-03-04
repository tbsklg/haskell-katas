module Kyu5.HashtagSpec where
import Kyu5.Hashtag (generateHashtag)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "generateHashtag" $ do
    it "should work for some examples" $ do      
      generateHashtag "An example"    `shouldBe` Just "#AnExample"
      generateHashtag "A b\tcD e f\n" `shouldBe` Just "#ABCDEF"
      generateHashtag "Codewars"      `shouldBe` Just "#Codewars"
      generateHashtag "Hello World"   `shouldBe` Just "#HelloWorld"
      
    it "should reject empty strings" $ do
      generateHashtag ""             `shouldBe` Nothing
      generateHashtag "            " `shouldBe` Nothing
      generateHashtag "\t          " `shouldBe` Nothing
      
    it "should reject random empty strings" $
      property $ forAll (listOf $ elements "\t\n\v\f\r ") $ \xs ->
        generateHashtag xs `shouldBe` Nothing
        
    it "should start with a hash if it wasn't rejected" $ 
      property $ \xs ->
        generateHashtag xs `shouldSatisfy` maybe True (('#' ==) . head)
        
    it "should reject too long strings" $ do
      property $ 
        forAll (elements ['a'..'z']) $ \x -> 
        forAll (arbitrary `suchThat` (>140)) $ \n ->
          generateHashtag (replicate n x) `shouldBe` Nothing
