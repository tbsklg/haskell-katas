module Kyu6.WhereIsMyParentSpec (spec) where

import Kyu6.WhereIsMyParent (findChildren)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    findChildren "beeeEBb" `shouldBe` "BbbEeee"
    findChildren "uwwWUueEe" `shouldBe` "EeeUuuWww"
    findChildren "abBA" `shouldBe` "AaBb"
    findChildren "AaaaaZazzz" `shouldBe` "AaaaaaZzzz"
    findChildren "CbcBcbaA" `shouldBe` "AaBbbCcc"
    findChildren "xXfuUuuF" `shouldBe` "FfUuuuXx"
