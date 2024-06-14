module Kyu7.SetReducerSpec (spec) where

import Kyu7.SetReducer (setReducer)
import Test.Hspec
import Test.HUnit
import Data.Foldable (for_)

spec :: Spec
spec = do
  it "example tests" $ do
    for_ [ (  2, [0, 4, 6, 8, 8, 8, 5, 5, 7] )
         , (  3, [9, 4, 1, 1, 1, 2, 3, 9, 4, 6, 2] )
         , ( 13, [1, 7, 0, 6, 1, 9, 0, 7, 1, 6, 0, 9, 0] )
         , (  5, [0, 2, 7, 0, 0, 6, 2, 1, 2, 2, 3, 4] )
         , (  3, [9, 6, 3, 3, 3, 6, 7, 5, 2, 4, 1, 6, 9] )
         , (  3, [5, 8, 1, 0, 5, 0, 6, 5, 8, 4, 4, 9, 7] )
         , (  2, [5, 7, 7, 8, 7, 8, 6, 3, 5, 9, 0, 9, 1, 1] )
         , (  3, [7, 9, 7, 3, 3, 5, 3, 4, 9, 4, 3] )
         , (  3, [6, 0, 5, 9, 5, 0, 0, 2, 5, 0] )
         ] $ \ (expected,xs) -> do
      assertEqual ("setReducer " ++ show xs ++ " :") expected $ setReducer xs
