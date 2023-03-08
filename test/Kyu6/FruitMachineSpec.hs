module Kyu6.FruitMachineSpec where
import Kyu6.FruitMachine
import Test.Hspec

reel = ["Wild","Star","Bell","Shell","Seven","Cherry","Bar","King","Queen","Jack"]

spec :: Spec
spec = do
  describe "The fruit function" $ do
    describe "should work for some examples" $ do
      it "Example #1" $ fruit [reel,reel,reel] [5,5,5] `shouldBe` 50
      it "Example #2" $ do
        fruit [["Wild","Star","Bell","Shell","Seven","Cherry","Bar","King","Queen","Jack"],
               ["Bar", "Wild", "Queen", "Bell", "King", "Seven", "Cherry", "Jack", "Star", "Shell"],
               ["Bell", "King", "Wild", "Bar", "Seven", "Jack", "Shell", "Cherry", "Queen", "Star"]]
              [0,1,2] `shouldBe` 100
      it "Example #3" $ do
        fruit [["King", "Cherry", "Bar", "Jack", "Seven", "Queen", "Star", "Shell", "Bell", "Wild"],
               ["Bell", "Seven", "Jack", "Queen", "Bar", "Star", "Shell", "Wild", "Cherry", "King"],
               ["Wild", "King", "Queen", "Seven", "Star", "Bar", "Shell", "Cherry", "Jack", "Bell"]]
              [9,8,7] `shouldBe` 10
      it "Example #4" $ do
        fruit [["King", "Jack", "Wild", "Bell", "Star", "Seven", "Queen", "Cherry", "Shell", "Bar"],
               ["Star", "Bar", "Jack", "Seven", "Queen", "Wild", "King", "Bell", "Cherry", "Shell"],
               ["King", "Bell", "Jack", "Shell", "Star", "Cherry", "Queen", "Bar", "Wild", "Seven"]]
              [0,5,0] `shouldBe` 6
