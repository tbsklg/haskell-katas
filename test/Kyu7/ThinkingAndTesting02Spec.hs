module Kyu7.ThinkingAndTesting02Spec where

import Kyu7.ThinkingAndTesting02
import Test.Hspec

spec :: Spec
spec = do
  describe "testit" $ do
    -- id?
    it "returns \"\" for \"\"" $ testit "" `shouldBe` ""
    it "returns \"a\" for \"a\"" $ testit "a" `shouldBe` "a"
    it "returns \"b\" for \"b\"" $ testit "b" `shouldBe` "b"
    -- head?
    it "returns \"a\" for \"aa\"" $ testit "aa" `shouldBe` "a"
    it "returns \"a\" for \"ab\"" $ testit "ab" `shouldBe` "a"
    it "returns \"b\" for \"bc\"" $ testit "bc" `shouldBe` "b"
    -- take (length/2) ?
    it "returns \"aa\" for \"aaaa\"" $ testit "aaaa" `shouldBe` "aa"
    it "returns \"aaa\" for \"aaaaaa\"" $ testit "aaaaaa" `shouldBe` "aaa"
    -- try "Submit" to find more...
