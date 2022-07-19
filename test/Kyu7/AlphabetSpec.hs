module Kyu7.AlphabetSpec where

import Kyu7.Alphabet (nato)
import Test.Hspec

spec :: Spec
spec = do
  describe "nato" $ do
    it "should work for some simple examples" $ do
      nato "hi"     `shouldBe` "Hotel India"
      nato "abc"    `shouldBe` "Alpha Bravo Charlie"
      nato "dark"   `shouldBe` "Delta Alpha Romeo Kilo"
      nato "Banana" `shouldBe` "Bravo Alpha November Alpha November Alpha"
