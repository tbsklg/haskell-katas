module Kyu7.SharesPriceSpec where
import Kyu7.SharesPrice (sharePrice)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

spec :: Spec
spec = do
    describe "sharePrice" $ do
      it "returns the original price if there was no change" $ property $ \x ->
        sharePrice x [] `shouldBe` printf "%.2f" x
      
      it "returns the original price if the change is 0%" $ property $ \x ->
        forAll (listOf $ pure 0) $ \xs ->
          sharePrice x xs `shouldBe` printf "%.2f" x
      
      it "returns half the price if the change is -50" $ property $ \x ->
        sharePrice x [-50] `shouldBe` printf "%.2f" (x / 2)
        
      it "returns double the price if the change is 100" $ property $ \x ->
        sharePrice x [100] `shouldBe` printf "%.2f" (2 * x)
        
      it "returns 0 if the change is -100 at any point" $ property $ \x ->        
        forAll ((++) <$> normalChanges <*> ((:) (-100) <$> normalChanges)) $ \xs ->
          sharePrice x xs `shouldSatisfy` (`elem` ["0.00","-0.00"])
      
      it "returns the correct amount on some static examples" $ do
        sharePrice  100 [-50, 50] `shouldBe`  "75.00"
        sharePrice  100 [-50, 100] `shouldBe` "100.00"
        sharePrice  100 [-20,  30] `shouldBe` "104.00"
        sharePrice 1000 [0, 2, 3, 6] `shouldBe` "1113.64"
  where
    normalChange  = choose (-99.99, 200)
    normalChanges = listOf normalChange 
