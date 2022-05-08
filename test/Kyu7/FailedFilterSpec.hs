module Kyu7.FailedFilterSpec where
import Kyu7.FailedFilter
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic tests" $ do
    it "should work for trivial examples" $ do
      filterNumbers "test123" `shouldBe` "test"
      filterNumbers "a1b2c3" `shouldBe` "abc"
      filterNumbers "aa1bb2cc3dd" `shouldBe` "aabbccdd"