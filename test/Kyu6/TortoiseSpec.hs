module Kyu6.TortoiseSpec where

import Kyu6.Tortoise
import Test.Hspec
import Text.Printf (printf)

testTortoise :: Int -> Int -> Int -> Maybe (Int, Int, Int) -> Spec
testTortoise v1 v2 g s =
  it (printf "should return race where v1: %d v2: %d lead: %d " v1 v2 g) $ do
    race v1 v2 g `shouldBe` s

spec :: Spec
spec = do
  describe "Basic Tests" $ do
    testTortoise 720 850 70 (Just (0, 32, 18))
    testTortoise 80 100 40 (Just (2, 0, 0))
    testTortoise 80 91 37 (Just (3, 21, 49))
