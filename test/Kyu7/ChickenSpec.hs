module  Kyu7.ChickenSpec where

import Test.Hspec
import Kyu7.Chicken

spec :: Spec
spec = do
  it "handles fixed cases" $ do
    chickenOptions 13 `shouldBe` [0, 3, 6, 9, 10, 12, 13]
    chickenOptions 2  `shouldBe` [0]
    chickenOptions 21 `shouldBe` [0, 3, 6, 9, 10, 12, 13, 15, 16, 18, 19, 20, 21]

-- the following line is optional for 8.2
main = hspec spec
