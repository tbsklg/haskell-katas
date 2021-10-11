module Kyu7.SF153Spec where

import Test.Hspec
import Kyu7.SF153

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "handles fixed cases" $ do
    inviteMoreWomen [1, -1, 1]    `shouldBe` True
    inviteMoreWomen [-1, -1, -1]  `shouldBe` False
    inviteMoreWomen [1, -1]       `shouldBe` False
    inviteMoreWomen [1, 1, 1]     `shouldBe` True

-- the following line is optional for 8.2
main = hspec spec