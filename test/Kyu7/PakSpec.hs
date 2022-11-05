module Kyu7.PakSpec where

import Kyu7.Pak
import Test.HUnit (assertEqual)
import Test.Hspec

test s exp = assertEqual ("Failed at: " ++ show s) exp (pak s)

spec :: Spec
spec = do
  it "Basic tests" $ do
    test "Man I need a taxi up to Ubud" "Man pak I pak need pak a pak taxi pak up pak to pak Ubud"
    test "What time are we climbing up the volcano?" "What pak time pak are pak we pak climbing pak up pak the pak volcano?"
    test "Take me to Semynak!" "Take pak me pak to pak Semynak!"
    test "Massage Yes Massage Yes Massage!" "Massage pak Yes pak Massage pak Yes pak Massage!"
    test "I'll take 12 bintang and a dance please" "I'll pak take pak 12 pak bintang pak and pak a pak dance pak please"

-- the following line is optional for 8.2
main = hspec spec
