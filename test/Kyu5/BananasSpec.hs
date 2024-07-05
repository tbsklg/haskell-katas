module Kyu5.BananasSpec (spec) where

import Kyu5.Bananas (bananas)
import Test.Hspec
import Control.Monad (when)
import Data.List (sort)

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "example 0" $ test "banann" []
    it "example 1" $ test "banana" ["banana"]
    it "example 2" $ test "bbananana" ["-b--anana","-ba--nana","-ban--ana","-bana--na"
                                      ,"-banan--a","-banana--","b---anana","b-a--nana"
                                      ,"b-an--ana","b-ana--na","b-anan--a","b-anana--"
                                      ]
    it "example 3" $ test "bananaaa" ["banan--a","banan-a-","banana--"]
    it "example 4" $ test "bananana" ["b--anana","ba--nana","ban--ana","bana--na","banan--a","banana--"]

test :: String -> [String] -> Expectation
test xs expected = do
  let actual = bananas xs
  when (length actual /= length expected) $ expectationFailure "Wrong number of bananas!"
  sort actual `shouldBe` expected
