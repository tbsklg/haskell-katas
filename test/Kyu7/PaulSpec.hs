module Kyu7.PaulSpec where

import Test.Hspec
import Kyu7.Paul

spec :: Spec
spec = do
  it "handles simple cases" $ do
    paul ["life", "eating", "life"] `shouldBe` "Super happy!"
    paul ["life", "Petes kata", "Petes kata", "Petes kata", "eating"] `shouldBe` "Super happy!"
    paul ["Petes kata", "Petes kata", "eating", "Petes kata", "Petes kata", "eating"] `shouldBe` "Happy!"
  
-- the following line is optional for 8.2
main = hspec spec