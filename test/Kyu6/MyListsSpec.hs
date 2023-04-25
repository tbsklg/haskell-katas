module Kyu6.MyListsSpec where
import Test.Hspec
import Kyu6.MyLists

spec :: Spec
spec = do
  describe "Basic Tests"  $ do
     it "[1,2,3,4,5] 1" $ do
         foldList [1,2,3,4,5] 1 `shouldBe` [6,6,3]
     it "[1,2,3,4,5] 2" $ do
          foldList [1,2,3,4,5] 2 `shouldBe` [9,6]
     it "[1,2,3,4,5] 3" $ do
          foldList [1,2,3,4,5] 3 `shouldBe` [15]
     it "[-9, 9, -8, 8, 66, 23] 1" $ do
          foldList [-9, 9, -8, 8, 66, 23] 1 `shouldBe` [14, 75,0]

