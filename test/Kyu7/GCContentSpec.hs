module Kyu7.GCContentSpec where
import Kyu7.GCContent (gcContent, Base(..))

import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "gcContent" $ do
    it "works for some examples" $ do
      gcContent []    `shouldBe`   0
      gcContent [A]   `shouldBe`   0
      gcContent [C]   `shouldBe` 100
      gcContent [G]   `shouldBe` 100
      gcContent [T]   `shouldBe`   0
      gcContent [A,C] `shouldBe`  50
      
    it "returns 0 if there is no G nor C" $ 
      forAll (listOf1 $ elements [A,T]) $ \xs ->
        gcContent xs `shouldBe` 0
        
    it "returns 100 if there is only G or C" $ 
      forAll (listOf1 $ elements [G,C]) $ \xs ->
        gcContent xs `shouldBe` 100
    
    it "returns the appropriate number for semi-random lists" $ property $ 
      \(Positive a) (Positive c) (Positive g) (Positive t) ->
        let xs = concat [replicate a A, replicate c C, replicate g G, replicate t T]
        in gcContent xs `shouldBeFuzzy` (fromIntegral $ g + c) / (fromIntegral $ a + g + c + t) * 100
        
    where    
      shouldBeFuzzy :: (Fractional a, Show a, Ord a) => a -> a -> Expectation
      shouldBeFuzzy a e =
          if (abs ((a - e) / e) >= 1e-12) then expectationFailure msg
                                          else return ()
        where msg = "Expected " ++ show e ++ ", but got " ++ show a
      infix 0 `shouldBeFuzzy`