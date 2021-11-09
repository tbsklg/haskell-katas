module Kyu7.PartridgeWatchSpec ( spec, main ) where

import Kyu7.PartridgeWatch ( part )
import Test.Hspec                            ( Spec, describe, hspec, it, shouldBe )

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "Basic tests" $ do
    it "Basic test 1" $
        part ["Grouse","Partridge","Pheasant"]
        `shouldBe` "Mine's a Pint!"
    it "Basic test 2" $
        part ["Pheasant","Goose","Starling","Robin"]
        `shouldBe` "Lynn, I've pierced my foot on a spike!!"
    it "Basic test 3" $
        part ["Grouse","Partridge","Partridge","Partridge","Pheasant"]
        `shouldBe` "Mine's a Pint!!!"
    it "Basic test 4" $
        part []
        `shouldBe` "Lynn, I've pierced my foot on a spike!!"
    it "Basic test 5" $
        part ["Grouse","Partridge","Pheasant","Goose","Starling","Robin","Thrush","Emu","PearTree","Chat","Dan","Square","Toblerone","Lynn","AlphaPapa","BMW","Graham","Tool","Nomad","Finger","Hamster"]
        `shouldBe` "Mine's a Pint!!!!!!!!"
