module Kyu7.NumberStarSpec where

import Kyu7.NumberStar (pattern)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "pattern" $ do
    it "returns 1 on 1" $
      pattern 1 `shouldBe` "1"
    it "returns a small pyramid on 2" $
      pattern 2 `shouldBe` "1\n1*2"
    it "returns a small pyramid on 3" $
      pattern 3 `shouldBe` "1\n1*2\n1**3"
      
    it "returns a string where all lines start with a '1'" $ property $ \(Positive n) ->
      pattern n `shouldSatisfy` all (('1' ==) . head) . lines
    
    it "has the correct number of lines" $ property $ \(Positive n) ->
      pattern n `shouldSatisfy` (n==) . length . lines
    
    it "does not end with a newline character" $ property $ \(Positive n) ->
      pattern n `shouldSatisfy` ('\n' /=) . last
      
    it "returns a string where all lines end with the correct number" $ property $ \(Positive n) ->  
      let dropped = zipWith drop [2..] . drop 1 . lines
          numberP = and . zipWith (==) (map show [2..]) . dropped
      in pattern n `shouldSatisfy` numberP
    
    it "has the correct amount of stars per line" $ property $ \(Positive n) ->
      let count     = length . filter (== '*')
          countEQ n = (n ==) . count
          countP    = and . zipWith countEQ [1..] . drop 1 . lines
      in pattern n `shouldSatisfy` countP