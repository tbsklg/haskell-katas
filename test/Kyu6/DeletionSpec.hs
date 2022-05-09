module Kyu6.DeletionSpec where
import Kyu6.Deletion (deleteNth)
import Data.List
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "deleteNth" $ do
    it "should work for some examples" $ do
      deleteNth [20,37,20,21]       1 `shouldBe` [20,37,21]
      deleteNth [1,1,3,3,7,2,2,2,2] 3 `shouldBe` [1, 1, 3, 3, 7, 2, 2, 2]
      
    it "should work on a single repeated value" $ property $
      \x (Positive n) ->
        deleteNth (replicate (n + 3) x) n `shouldBe` replicate n x
    
    it "shouldn't contain any character more than n times" $ property $
      \(xs) (Positive n) ->
        deleteNth xs n `shouldSatisfy` all ((n >=) . length) . group . sort
