module Kyu7.FriendsSpec where
import Kyu7.Friends
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
    describe "The friends function" $ do
      it "should work for example test cases" $ do
        friends 0 `shouldBe` 0
        friends 1 `shouldBe` 0
        friends 2 `shouldBe` 0
        friends 4 `shouldBe` 1
        friends 2570 `shouldBe` 11
        friends 25700 `shouldBe` 14
        friends 74093885 `shouldBe` 26
        friends 314997064 `shouldBe` 28
