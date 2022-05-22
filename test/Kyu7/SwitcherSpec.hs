module Kyu7.SwitcherSpec where

import Test.Hspec
import Kyu7.Switcher

spec :: Spec
spec = do
  it "adds Nums" $ do
    switcher ["24", "12", "23", "22", "4", "26", "9", "8"] `shouldBe` "codewars"
    switcher ["25","7","8","4","14","23","8","25","23","29","16","16","4"] `shouldBe` "btswmdsbd kkw"
    switcher ["4", "24"] `shouldBe` "wc"
    switcher ["12"] `shouldBe` "o"
    switcher ["12","28","25","21","25","7","11","22","15"] `shouldBe` "o?bfbtpel"


-- the following line is optional for 8.2
main = hspec spec
