module Kyu7.CaffeineSpec (spec, main) where

import Kyu7.Caffeine (caffeineBuzz)
import Test.Hspec

main = hspec spec

spec = do
  describe "caffeineBuzz" $ do
    it "should work for some examples" $ do
      caffeineBuzz 1 `shouldBe` "mocha_missing!"
      caffeineBuzz 2 `shouldBe` "mocha_missing!"
      caffeineBuzz 3 `shouldBe` "Java"
      caffeineBuzz 6 `shouldBe` "JavaScript"
      caffeineBuzz 12 `shouldBe` "CoffeeScript"
