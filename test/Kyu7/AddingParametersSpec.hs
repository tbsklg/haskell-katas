module Kyu7.AddingParametersSpec where
import Kyu7.AddingParameters (add)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "add" $ do
    it "should work for some static tests" $ do
      add [        ] `shouldBe`  0
      add [1,2,3   ] `shouldBe` 14
      add [1,4,-5,5] `shouldBe` 14 
      
    it "should return 0 on the empty list"       $ add [] `shouldBe` 0
    
    it "should return a on a singleton list [a]" $ 
      conjoin [ property $ \k -> add [k] `shouldBe` (k :: Integer)
              , property $ \k -> add [k] `shouldBe` (k :: Int)
              ]
    
    it "should return a on a list of length two" $ 
      property $ \x y -> add [x,y] `shouldBe` x + 2 * (y :: Integer)
    