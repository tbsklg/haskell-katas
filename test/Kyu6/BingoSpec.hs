module Kyu6.BingoSpec where

import Test.Hspec
import Kyu6.Bingo

spec :: Spec
spec = do
  it "works on a few fixed cases" $ do
    bingo [("ABC", 65)    , ("HGR", 74) , ("BYHT", 740) ]  2 `shouldBe` "Loser!"
    bingo [("ABC", 65)    , ("HGR", 74) , ("BYHT", 740) ]  1 `shouldBe` "Winner!"
    bingo [("HGTYRE", 74) , ("BE", 66)  , ("JKTY", 74)  ]  3 `shouldBe` "Loser!"
    
-- the following line is optional for 8.2
main = hspec spec
