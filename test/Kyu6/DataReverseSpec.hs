module Kyu6.DataReverseSpec (main,spec) where

import Test.Hspec
import Kyu6.DataReverse (dataReverse)

spec :: Spec
spec = do
  it "Basic example: " $ do
    dataReverse [1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]
     `shouldBe` [1,0,1,0,1,0,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1]

main :: IO ()
main = hspec spec
