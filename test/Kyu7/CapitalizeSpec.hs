module Kyu7.CapitalizeSpec (spec, main) where

import Kyu7.Capitalize
import Test.Hspec

main = hspec spec

spec = do
  describe "Alternate capitalization" $ do
    it "should work for simple examples" $ do
      capitalize "abcdef" `shouldBe` ["AbCdEf", "aBcDeF"]
      capitalize "codewars" `shouldBe` ["CoDeWaRs", "cOdEwArS"]
      capitalize "abracadabra" `shouldBe` ["AbRaCaDaBrA", "aBrAcAdAbRa"]
      capitalize "codewarriors" `shouldBe` ["CoDeWaRrIoRs", "cOdEwArRiOrS"]
      capitalize "indexinglessons" `shouldBe` ["InDeXiNgLeSsOnS", "iNdExInGlEsSoNs"]
      capitalize "codingisafunactivity" `shouldBe` ["CoDiNgIsAfUnAcTiViTy", "cOdInGiSaFuNaCtIvItY"]
