module Kyu7.MaybeConcatSpec (spec) where

import Kyu7.MaybeConcat (concatMaybe)
import Test.Hspec

spec = do
  it "example tests" $ do
    concatMaybe (Just "Hello") (Just "World") `shouldBe` Just "Hello World"
    concatMaybe (Just "Hello") Nothing `shouldBe` Nothing
    concatMaybe Nothing (Just "World") `shouldBe` Nothing
