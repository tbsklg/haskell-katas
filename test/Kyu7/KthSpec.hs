module Kyu7.KthSpec where
import Kyu7.Kth
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  describe "elementAt [1..10] 3" $ do
    it "should be 3" $ do
      elementAt [1..10] 3 `shouldBe` 3
  describe "[1..]" $ do
    it "(`elementAt` k) should be k provided k >= 1" $ do
      property $ forAll (suchThat arbitrary (>= 1)) $
        \k -> elementAt [1..] k `shouldBe` k
