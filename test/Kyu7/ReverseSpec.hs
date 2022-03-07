module Kyu7.ReverseSpec where

import qualified Kyu7.Reverse as Reverse
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "reverse" $ do
    it "should reverse a list of Integers" $ do
      property $ \x -> Reverse.reverse x == reverse (x :: [Integer])
    it "should reverse a string" $ do
      property $ \x -> Reverse.reverse x == reverse (x :: String)
    it "should reverse a list of Maybe Bool" $ do
      property $ \x -> Reverse.reverse x == reverse (x :: [Maybe Bool])
