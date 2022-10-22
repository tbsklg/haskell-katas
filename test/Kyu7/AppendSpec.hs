module Kyu7.AppendSpec where
import Kyu7.Append
import Test.Hspec
import Text.Printf
import Test.QuickCheck

spec = do
  describe "append [] []" $ do
    it (printf "should return []") $ do 
      (append ([]::[Int]) []) `shouldBe` []
  describe "append l []" $ do
    it (printf "should return l") $ do
      property $ \l -> append l [] == (l :: [Int])
  describe "append [] r" $ do
    it (printf "should return r") $ do
      property $ \r -> append [] r == (r :: [Int])
  describe "append (lh:lt) r" $ do
    it (printf "should return lh:append lt r") $ do
      property $ \lh lt r -> append (lh:lt) r == (lh :: [Int]):append lt r
