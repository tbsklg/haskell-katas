module Kyu7.FindSpec where

import Test.Hspec
import Kyu7.Find

spec :: Spec
spec = do
  it "works on a few fixed cases " $ do
    findFunction [F ((0 ==) . flip rem 2) ,I 9,I 3,I 1,I 0]  [1,2,3,4]  `shouldBe` [2,4]
    findFunction [I 9, F ((0 ==) . flip rem 2) ,I 3,I 1,I 0]  [1,2,3,4]  `shouldBe` [2,4]
    findFunction [I 5,F ((0 ==) . (* 4)),I 1,I 0] [0,1,2,3,4] `shouldBe` [0]
    
-- the following line is optional for 8.2
main = hspec spec
