module Kyu7.Kata3Spec where

import Test.Hspec
import Kyu7.Kata3

spec :: Spec
spec = do
  describe "Example Tests" $ 
    it "should work with example tests" $ do
      fizzBuzzCuckooClock "13:34" `shouldBe` "tick"
      fizzBuzzCuckooClock "21:00" `shouldBe` "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
      fizzBuzzCuckooClock "11:15" `shouldBe` "Fizz Buzz"
      fizzBuzzCuckooClock "03:03" `shouldBe` "Fizz"
      fizzBuzzCuckooClock "14:30" `shouldBe` "Cuckoo"
      fizzBuzzCuckooClock "08:55" `shouldBe` "Buzz"
      fizzBuzzCuckooClock "00:00" `shouldBe` "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
      fizzBuzzCuckooClock "12:00" `shouldBe` "Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo Cuckoo"
