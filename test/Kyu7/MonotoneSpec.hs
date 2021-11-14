module Kyu7.MonotoneSpec where
import Kyu7.Monotone (isMonotone)

import Test.Hspec

spec :: Spec
spec = do
  describe "check" $ do    
    it "should work on increasing lists (Int)"     $ isMonotone ([1..10] :: [Int])     `shouldBe` True
    it "should work on increasing lists (Integer)" $ isMonotone ([1..10] :: [Integer]) `shouldBe` True
    it "should work on constant lists"             $ isMonotone (replicate 5 ())       `shouldBe` True
    it "should work on empty an empty list"        $ isMonotone ([] :: [()])           `shouldBe` True
    it "should return false on a decreasing list"  $ isMonotone [5,4,3,2,1]            `shouldBe` False
    it "should work on a non-decreasing list"      $ isMonotone [1,2,3,3,4,5]          `shouldBe` True
    it "should work on random list"                $ isMonotone [0,0,-1]               `shouldBe` False
    it "should return false on a infinite decreasing list" $ 
      isMonotone [5,4..] `shouldBe` False
