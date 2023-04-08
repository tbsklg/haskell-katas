module Kyu6.MissingLetterSpec where
import Test.Hspec
import Kyu6.MissingLetter

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      findMissingLetter ['a','b','c','d','f'] `shouldBe` 'e'
      findMissingLetter ['O','Q','R','S'] `shouldBe` 'P'

