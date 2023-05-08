module Kyu6.PascalsTriangleSpec where
import Kyu6.PascalsTriangle (pascalsTriangle, createLine)
import Test.Hspec 
import Test.QuickCheck

spec :: Spec
spec = 
  describe "Sample tests" $ do
    it "should work for 6 levels" $ do      
      pascalsTriangle 6  `shouldBe` [1,1,1,1,2,1,1,3,3,1,1,4,6,4,1,1,5,10,10,5,1]
    
    it "should create line based on given line" $ do
      createLine [1] `shouldBe` [1,1]
      createLine [1,1] `shouldBe` [1,2,1]
      createLine [1,2,1] `shouldBe` [1,3,3,1]
      createLine [1,3,3,1] `shouldBe` [1,4,6,4,1]

