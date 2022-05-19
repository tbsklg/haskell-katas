module Kyu5.Caesar2Spec where
import Kyu5.Caesar2

import Test.Hspec
import Text.Printf (printf)

ident :: String -> Int -> String
ident strng shift = decode (encodeStr strng shift)

testCaesar :: String -> Int -> String -> Spec
testCaesar s shift s1 = 
  it (printf "should return the same string: %s with shift %i " s shift) $
    ident s shift `shouldBe` s
    
spec :: Spec
spec = do
    describe "encodeStr" $ do
        let u = "I should have known that you would have a perfect answer for me!!!"
        let v = ["ijJ tipvme ibw","f lopxo uibu z","pv xpvme ibwf ","b qfsgfdu botx","fs gps nf!!!"]
        let shift = 1
        it (printf "Encode string: %s with shift: %i" u shift) $ do
            encodeStr u shift `shouldBe` v
        
    describe "Composition of encodeStr and decode" $ do
        let u = "How can we become the kind of people that face our fear and do it anyway?"
        testCaesar u 1 u
