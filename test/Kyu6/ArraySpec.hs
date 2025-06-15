module Kyu6.ArraySpec where

import Test.Hspec
import Kyu6.Array (upArray)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    describe "Valid Arrays" $ do
      mapM_ fixedTest
        [ ([2,3,9],   Just [2,4,0])
        , ([9,9],     Just [1,0,0])
        , ([0,4,2],   Just [0,4,3])
        , ([4,3,2,5], Just [4,3,2,6])
        , ([1,2,3,9], Just [1,2,4,0])
        , ([9,9,9,9], Just [1,0,0,0,0])
        , ([0,1,3,7], Just [0,1,3,8])
        ]
    describe "Invalid Arrays" $ do
      mapM_ fixedTest
        [ ([1,-9], Nothing)
        ]
  
fixedTest :: ([Int],Maybe [Int]) -> SpecWith ()
fixedTest (inp, ans) =
  it ("upArray " ++ show inp) $ do
    upArray inp `shouldBe` ans
