module Kyu6.PersistenceSpec where

import Data.Char
import Kyu6.Persistence (persistence)
import Test.Hspec
import Text.Printf (printf)

testPersistence :: Int -> Int -> Spec
testPersistence n s =
  it (printf "should return persistence for : %d" n) $
    persistence n `shouldBe` s

spec :: Spec
spec = do
  describe "Persistence: Basic Tests" $ do
    testPersistence 39 3
    testPersistence 4 0
    testPersistence 25 2
    testPersistence 999 4
