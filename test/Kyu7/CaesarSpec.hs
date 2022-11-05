module Kyu7.CaesarSpec where

import Kyu7.Caesar
import Test.Hspec

spec :: Spec
spec = do
  it "makes the secret messages" $ do
    caeser "..5tyu.." 25 `shouldBe` "..5SXT.."
    caeser "hello world" 0 `shouldBe` "HELLO WORLD"
    caeser "hello" 7 `shouldBe` "OLSSV"
    caeser "This is a message" 0 `shouldBe` "THIS IS A MESSAGE"
    caeser "who are you?" 18 `shouldBe` "OZG SJW QGM?"
    caeser "..#$%^.." 0 `shouldBe` "..#$%^.."
    caeser "..#$%^.." 26 `shouldBe` "..#$%^.."
    caeser "abcdefghijklmnopqrstuvwxyz" 11 `shouldBe` "LMNOPQRSTUVWXYZABCDEFGHIJK"

-- the following line is optional for 8.2
main = hspec spec
