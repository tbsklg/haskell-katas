module Kyu6.DecipherThisSpec where

import Kyu6.DecipherThis
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic Tests" $
    it "should work with basic tests" $ do
      decipherThis "65 119esi 111dl 111lw 108dvei 105n 97n 111ka" `shouldBe` "A wise old owl lived in an oak"
      decipherThis "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp" `shouldBe` "The more he saw the less he spoke"
      decipherThis "84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare" `shouldBe` "The less he spoke the more he heard"
      decipherThis "87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri" `shouldBe` "Why can we not all be like that wise old bird"
      decipherThis "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple" `shouldBe` "Thank you Piotr for all your help"
