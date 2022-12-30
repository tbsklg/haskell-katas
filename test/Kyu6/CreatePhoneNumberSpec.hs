module Kyu6.CreatePhoneNumberSpec where

import Kyu6.CreatePhoneNumber
import Test.QuickCheck
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    createPhoneNumber [0, 0, 0, 0, 0, 0, 0, 0, 0, 0] `shouldBe` "(000) 000-0000"
    createPhoneNumber [5, 5, 5, 6, 4, 7, 6, 4, 2, 7] `shouldBe` "(555) 647-6427"
    createPhoneNumber [0, 2, 4, 6, 8, 9, 7, 5, 3, 1] `shouldBe` "(024) 689-7531"
    createPhoneNumber [0, 4, 4, 7, 0, 0, 7, 0, 7, 0] `shouldBe` "(044) 700-7070"
