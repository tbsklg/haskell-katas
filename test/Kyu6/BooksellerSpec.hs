module Kyu6.BooksellerSpec where
import Kyu6.Bookseller (stocklist, Stock(..))
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "stocklist" $ do    
    it "should work for some examples" $ do
      let stock = [Stock "ABAR" 200, Stock "CDXE" 500, Stock "BKWR" 250, Stock "BTSQ" 890, Stock "DRTY" 600]
      stocklist stock ['A','B'] `shouldBe` [('A',200), ('B',1140)]
      stocklist stock ['C','X'] `shouldBe` [('C',500), ('X',0)]
      stocklist stock ['Y','X'] `shouldBe` [('Y',0), ('X',0)]
      stocklist stock ['C']     `shouldBe` [('C', 500)]
      stocklist stock []        `shouldBe` []
