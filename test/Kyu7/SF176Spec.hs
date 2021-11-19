module Kyu7.SF176Spec where

import Test.Hspec
import Kyu7.SF176

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "handles fixed cases " $ do
    reverseLetter "krishan" `shouldBe` "nahsirk"
    reverseLetter "ultr53o?n" `shouldBe` "nortlu"
    reverseLetter "ab23c" `shouldBe` "cba"
    reverseLetter "krish21an" `shouldBe` "nahsirk"
    reverseLetter "" `shouldBe`  ""

-- the following line is optional for 8.2
main = hspec spec