module Kyu7.HammingDistanceSpec where
import Kyu7.HammingDistance
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic tests" $ do
    it "Testing with '100101' and '101001'" $
      hammingDistance "100101" "101001" `shouldBe` 2
    it "Testing with '1010' and '0101'" $
      hammingDistance "1010" "0101" `shouldBe` 4
    it "Testing with '100101011011010010010' and '101100010110010110101'" $
      hammingDistance "100101011011010010010" "101100010110010110101" `shouldBe` 9
