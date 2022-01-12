module Kyu7.MinMax2Spec where
    
import Kyu7.MinMax2 (minMax)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "minMax" $ do
    it "should work for some examples" $ do  
      minMax [1, 2,  3,  4,  5] `shouldBe` (1,  5)
      minMax [1, 2, -3,  4,  5] `shouldBe` (-3, 5)
      minMax [1, 9,  3,  4, -5] `shouldBe` (-5, 9 )
      minMax [4, 5, 29, 54, 4, 0, -214, 542, -64, 1, -3, 6, -6] `shouldBe` (-214, 542)
      minMax [1..10] `shouldBe` (1, 10)
    
    it "should work for any singleton list" $
      conjoin [ property $ \x -> minMax [x] `shouldBe` (x, x :: Int)
              , property $ \x -> minMax [x] `shouldBe` (x, x :: Double)
              , property $ \x -> minMax [x] `shouldBe` (x, x :: ())
              ]
    
    it "should return numbers that are in the original list" $ property $ 
      \(NonEmpty xs) ->
        let (h,l) = minMax (xs :: [Integer])
        in (h `shouldSatisfy` (flip elem xs)) .&. (l `shouldSatisfy` (flip elem xs))