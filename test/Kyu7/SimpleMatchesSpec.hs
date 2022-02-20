module Kyu7.SimpleMatchesSpec where
import Kyu7.SimpleMatches
import Test.Hspec

spec = do
  describe "Simple string matching" $ do
    it "Basic tests" $ do
      solve  "code*s"   "codewars" `shouldBe`True
      solve  "codewar*s"   "codewars" `shouldBe` True
      solve  "code*warrior"  "codewars" `shouldBe`False
      solve  "c"   "c" `shouldBe`True
      solve  "*s"   "codewars" `shouldBe`True
      solve  "*s"   "s" `shouldBe` True
      solve  "s*"   "s" `shouldBe`True
      solve  "aa"   "aaa" `shouldBe` False
      solve  "aa*"   "aaa" `shouldBe` True
      solve  "aaa"   "aa" `shouldBe` False
      solve  "aaa*"   "aa" `shouldBe` False
      solve  "*"   "codewars" `shouldBe`True
      solve  "aaa*aaa"   "aaa" `shouldBe` False
