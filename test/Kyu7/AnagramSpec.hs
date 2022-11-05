module Kyu7.AnagramSpec (spec, main) where

import Kyu7.Anagram (isAnagramOf)
import Test.Hspec
import Test.QuickCheck

main = hspec spec

spec = do
  describe "isAnagramOf" $ do
    it "should work for some examples" $ do
      ("foefet" `isAnagramOf` "toffee") `shouldBe` True
      ("ToFfeE" `isAnagramOf` "toffee") `shouldBe` True -- case insenitive!
      ("Hello" `isAnagramOf` "World") `shouldBe` False
      ("apple" `isAnagramOf` "pale") `shouldBe` False

    it "should work for some random tests" $ do
      let alpha = elements $ ['a' .. 'z'] ++ ['A' .. 'Z']
      conjoin
        [ property $ forAll (listOf1 alpha) $ \x -> (x `isAnagramOf` x `shouldBe` True),
          property $ forAll (listOf1 alpha) $ \x -> (x `isAnagramOf` reverse x `shouldBe` True)
        ]
