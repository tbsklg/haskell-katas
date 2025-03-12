module Kyu6.CountSpec where

import Test.Hspec

import Kyu6.Count (count)

spec :: Spec
spec = do
  it "Fixed Tests" $ do
    mapM_ (\(inp, ans) -> count inp `shouldMatchList` ans)
      [ ("aba", [('a',2),('b',1)])
      , ("", [])
      , ("aa", [('a',2)])
      , ("aabb", [('a',2),('b',2)]) ]
