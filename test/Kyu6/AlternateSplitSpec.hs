module Kyu6.AlternateSplitSpec where
    
import Kyu6.AlternateSplit (encrypt, decrypt)
import Test.Hspec ( describe, it, shouldBe, Spec )

spec :: Spec
spec = do
     describe "Sample Tests" $ do
      describe "Encryption" $ do
       it "This is a test! 0" $ do
         encrypt "This is a test!" 0 `shouldBe`  "This is a test!"
       it "This is a test! 1" $ do
         encrypt "This is a test!" 1 `shouldBe` "hsi  etTi sats!"
       it "This is a test! 2 " $ do
         encrypt "This is a test!" 2 `shouldBe` "s eT ashi tist!"
       it "This is a test! 3" $ do
         encrypt "This is a test!" 3  `shouldBe` " Tah itse sits!"
       it "This is a test! 4" $ do
         encrypt "This is a test!" 4  `shouldBe` "This is a test!"
       it "This is a test! -1" $ do
         encrypt "This is a test!" (-1) `shouldBe` "This is a test!"
       it "This kata is very interesting! 1" $ do
         encrypt "This kata is very interesting!" 1 `shouldBe` "hskt svr neetn!Ti aai eyitrsig"
     describe "Decryption" $ do
       it "This is a test! 0" $ do
         decrypt "This is a test!" 0 `shouldBe` "This is a test!"
         decrypt "20314" 1 `shouldBe` "32104"
       it "hsi  etTi sats! 1" $ do 
         decrypt "hsi  etTi sats!" 1 `shouldBe` "This is a test!"
       it "s eT ashi tist! 2" $ do
         decrypt "s eT ashi tist!" 2 `shouldBe` "This is a test!"
       it " Tah itse sits! 3" $ do
         decrypt " Tah itse sits!" 3 `shouldBe` "This is a test!"
       it "This is a test! 4" $ do
         decrypt "This is a test!" 4 `shouldBe` "This is a test!"
       it "This is a test! -1 " $ do
         decrypt "This is a test!" (-1) `shouldBe` "This is a test!"
       it "hskt svr neetn!Ti aai eyitrsig  1" $ do
         decrypt "hskt svr neetn!Ti aai eyitrsig" 1 `shouldBe` "This kata is very interesting!"
