module Kyu6.RLESpec where
import Kyu6.RLE (runLengthEncoding)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "runLengthEncoding" $ do
    it "should work for some examples" $ do
      runLengthEncoding ""    `shouldBe` []
      runLengthEncoding "abc" `shouldBe` [(1,'a'),(1,'b'),(1,'c')]
      runLengthEncoding "aab" `shouldBe` [(2,'a'),(1,'b')]
      runLengthEncoding "hello world!" 
        `shouldBe` [(1,'h'),(1,'e'),(2,'l'),(1,'o'),(1,' '),(1,'w'),(1,'o'),(1,'r'),(1,'l'),(1,'d'),(1,'!')]
      runLengthEncoding "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbb" 
        `shouldBe` [(34,'a'), (3,'b')]
      runLengthEncoding "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW"
        `shouldBe` [(12,'W'),(1,'B'),(12,'W'),(3,'B'),(24,'W'),(1,'B'),(14,'W')]
  describe "inverse operation" $
    it "should return the original string" $
      property $ \xs ->
        concatMap (uncurry replicate) (runLengthEncoding xs) `shouldBe` xs
