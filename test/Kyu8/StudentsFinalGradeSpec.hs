module Kyu8.StudentsFinalGradeSpec (spec) where

import Kyu8.StudentsFinalGrade (finalGrade)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    finalGrade 100 12 `shouldBe` 100
    finalGrade  99  0 `shouldBe` 100
    finalGrade  10 15 `shouldBe` 100
    finalGrade  85  5 `shouldBe`  90
    finalGrade  55  3 `shouldBe`  75
    finalGrade  55  0 `shouldBe`   0
    finalGrade  20  2 `shouldBe`   0
