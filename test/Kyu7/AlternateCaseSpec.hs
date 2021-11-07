module Kyu7.AlternateCaseSpec (spec, main) where
import Kyu7.AlternateCase
import Test.Hspec
import Test.QuickCheck

main = hspec spec
spec = do
  describe "The alternateCase function" $ do
    it "should work for some examples" $ do
      alternateCase "abc" `shouldBe` "ABC"
      alternateCase "ABC" `shouldBe` "abc"
      alternateCase "Hello World" `shouldBe`  "hELLO wORLD"