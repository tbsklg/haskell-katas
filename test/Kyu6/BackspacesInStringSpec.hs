module Kyu6.BackspacesInStringSpec (spec, main) where

import Kyu6.BackspacesInString
import Test.Hspec

spec :: Spec
spec = do
  describe "cleanString" $ do
    it "should work correctly" $ do
      cleanString "abc#d##c" `shouldBe` "ac"
      cleanString "abc####d##c#" `shouldBe` ""

main :: IO ()
main = hspec spec
