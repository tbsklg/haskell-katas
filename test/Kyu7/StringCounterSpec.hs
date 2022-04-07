module Kyu7.StringCounterSpec where
    
import Test.Hspec
import Kyu7.StringCounter

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      stringCounter "Hello world" 'o' `shouldBe` 2
      stringCounter "Wait isn't it supposed to be cynical?" 'i' `shouldBe` 4
      stringCounter "I'm gona be the best code warrior ever dad" 'r' `shouldBe` 4
      stringCounter "Do you like Harry Potter?" '?' `shouldBe` 1
