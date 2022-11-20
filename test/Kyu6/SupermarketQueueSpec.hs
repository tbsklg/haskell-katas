module Kyu6.SupermarketQueueSpec (spec) where

import Kyu6.SupermarketQueue (queueTime)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    queueTime [] 1 `shouldBe` 0
    queueTime [1,2,3,4] 1 `shouldBe` 10
    queueTime [2,2,3,3,4,4] 2 `shouldBe` 9
    queueTime [1,2,3,4,5] 100 `shouldBe` 5
