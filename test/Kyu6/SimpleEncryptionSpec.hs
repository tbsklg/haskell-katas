module Kyu6.SimpleEncryptionSpec where
import Test.Hspec
import Test.QuickCheck
import Kyu6.SimpleEncryption

spec :: Spec
spec = do
    describe "Example Tests" $
        it "should work with example tests" $ do
            encryptThis "" `shouldBe` ""
            encryptThis "A wise old owl lived in an oak" `shouldBe` "65 119esi 111dl 111lw 108dvei 105n 97n 111ka"
            encryptThis "The more he saw the less he spoke" `shouldBe` "84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp"
            encryptThis "The less he spoke the more he heard" `shouldBe` "84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare"
            encryptThis "Why can we not all be like that wise old bird" `shouldBe` "87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri"
            encryptThis "Thank you Piotr for all your help" `shouldBe` "84kanh 121uo 80roti 102ro 97ll 121ruo 104ple"

