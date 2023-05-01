module Kyu6.A9nSpec where

import Kyu6.A9n (abbreviate)
import Test.Hspec
import Test.QuickCheck

exampleWords :: [(String, String)]
exampleWords =
  zip ["cat", "mat", "doggy", "balloon", "sits", "sat", "a", "is", "on", "the", "monolithic", "double-barreled"]
      ["cat", "mat", "d3y",   "b5n",     "s2s",  "sat", "a", "is", "on", "the", "m8c",         "d4e-b6d"]
      
spec :: Spec
spec = do
  describe "abbreviate" $ do
    it "should a8e abbreviation" $ abbreviate "abbreviation" `shouldBe` "a10n"
    it "should a8e internationalization" $ abbreviate "internationalization" `shouldBe` "i18n"
    it "should a8e Accessibility"        $ abbreviate "Accessibility" `shouldBe` "A11y"
    it "should a8e accessibility"        $ abbreviate "accessibility" `shouldBe` "a11y"
    it "should a8e 'elephant-ride'"      $ abbreviate "elephant-ride" `shouldBe` "e6t-r2e"
  
    it "should work for the example words" $
      property $ forAll (elements exampleWords) $ \(w,s) -> abbreviate w `shouldBe` s    

