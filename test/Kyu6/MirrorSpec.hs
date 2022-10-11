module Kyu6.MirrorSpec where

import Test.Hspec
import Kyu6.Mirror

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    mirror "Codewars" `shouldBe` "************\n* srawedoC *\n************"
    mirror "Hello World" `shouldBe` "*********\n* olleH *\n* dlroW *\n*********"
    mirror "emosewA !ataK" `shouldBe` "***********\n* Awesome *\n* Kata!   *\n***********"

-- the following line is optional for 8.2
main = hspec spec
