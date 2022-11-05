module Kyu5.DidYouMeanSpec (spec) where

import Kyu5.DidYouMean (findMostSimilar)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    let fruits = findMostSimilar ["cherry", "pineapple", "melon", "strawberry", "raspberry"]
    fruits "strawbery" `shouldBe` "strawberry"
    fruits "berry" `shouldBe` "cherry"

    let things = findMostSimilar ["stars", "mars", "wars", "codec", "codewars"]
    things "coddwars" `shouldBe` "codewars"

    let languages = findMostSimilar ["coffeescript", "haskell", "java", "javascript", "php", "python", "ruby"]
    languages "heaven" `shouldBe` "java"
    languages "javascript" `shouldBe` "javascript"
