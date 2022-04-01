module Kyu7.SentencifySpec where

import Test.Hspec
import Kyu7.Sentencify (sentencify)

spec :: Spec
spec = do
  describe "sentencify" $ do
    it "Should work for example sentences" $ do
      sentencify ["i", "am", "an", "AI"]
        `shouldBe` "I am an AI."
        
      sentencify ["yes"]
        `shouldBe` "Yes."
      
      sentencify ["FIELDS","of","CORN","are","to","be","sown"]
        `shouldBe` "FIELDS of CORN are to be sown."
        
      sentencify ["i'm","afraid","I","can't","let","you","do","that"]
        `shouldBe` "I'm afraid I can't let you do that."
