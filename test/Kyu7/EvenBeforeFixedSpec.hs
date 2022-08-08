module Kyu7.EvenBeforeFixedSpec (spec) where

import Kyu7.EvenBeforeFixed (evenNumbersBeforeFixed)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    evenNumbersBeforeFixed [1, 4, 2, 6, 3, 1] 6 `shouldBe` Just 2
    evenNumbersBeforeFixed [2, 2, 2, 1] 3 `shouldBe` Nothing
    evenNumbersBeforeFixed [2, 3, 4, 3] 3 `shouldBe` Just 1
    evenNumbersBeforeFixed [1, 3, 4, 3] 3 `shouldBe` Just 0
