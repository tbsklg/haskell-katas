module Kyu7.CountsalutesSpec (spec) where

import Kyu7.Countsalutes (countSalutes)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    countSalutes "<---->---<---<-->" `shouldBe` 4
    countSalutes "------" `shouldBe` 0
    countSalutes ">>>>>>>>>>>>>>>>>>>>>----<->" `shouldBe` 42
    countSalutes "<<----<>---<" `shouldBe` 2
    countSalutes ">" `shouldBe` 0