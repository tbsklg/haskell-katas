module Kyu7.TailSwapSpec where
import Test.Hspec
import Kyu7.TailSwap

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      tailSwap ("abc:123", "cde:456") `shouldBe` ("abc:456", "cde:123")
      tailSwap ("a:12345", "777:xyz") `shouldBe` ("a:xyz", "777:12345")
