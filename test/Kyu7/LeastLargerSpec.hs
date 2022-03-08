module Kyu7.LeastLargerSpec (spec) where

import Kyu7.LeastLarger (leastLarger)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    leastLarger [4, 1, 3, 5, 6] 0 `shouldBe` Just 3
    leastLarger [4, 1, 3, 5, 6] 4 `shouldBe` Nothing
    leastLarger [1, 3, 5, 2, 4] 0 `shouldBe` Just 3
