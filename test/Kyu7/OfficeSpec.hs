module Kyu7.OfficeSpec where

import Test.Hspec
import Kyu7.Office

spec :: Spec
spec = do
  it "handles a few fixed tests " $ do
    broken "1" `shouldBe` "0"
    broken "10000000101101111110011001000" `shouldBe` "01111111010010000001100110111"
    broken "100010" `shouldBe` "011101"
  
-- the following line is optional for 8.2
main = hspec spec