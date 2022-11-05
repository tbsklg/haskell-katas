module Kyu7.StringMakerSpec where

import Data.List
import Kyu7.StringMaker (makeString)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "makeString" $ do
    it "should work for some examples" $ do
      makeString "sees eyes xray yoat" `shouldBe` "sexy"
      makeString "brown eyes are nice" `shouldBe` "bean"
      makeString "cars are very nice" `shouldBe` "cavn"
      makeString "kaks de gan has a big head" `shouldBe` "kdghabh"

    it "should work with single letter words" $
      property $
        forAll (listOf1 $ choose ('a', 'z')) $ \x ->
          let str = intercalate " " . map return $ x
           in makeString str `shouldBe` x
