module Kyu5.IpsBetweenSpec where

import Data.List
import Data.List.Split
import Kyu5.IpsBetween
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "ipsBetween" $ do
    it "basic" $ do
      ipsBetween "10.0.0.0" "10.0.0.50" `shouldBe` 50
      ipsBetween "20.0.0.10" "20.0.1.0" `shouldBe` 246
      ipsBetween "150.0.0.0" "150.0.0.1" `shouldBe` 1
      ipsBetween "10.0.0.0" "10.0.0.50" `shouldBe` 50
      ipsBetween "20.0.0.10" "20.0.1.0" `shouldBe` 246
      ipsBetween "10.11.12.13" "10.11.13.0" `shouldBe` 243
      ipsBetween "160.0.0.0" "160.0.1.0" `shouldBe` 256
      ipsBetween "170.0.0.0" "170.1.0.0" `shouldBe` 65536
      ipsBetween "50.0.0.0" "50.1.1.1" `shouldBe` 65793
      ipsBetween "180.0.0.0" "181.0.0.0" `shouldBe` 16777216
      ipsBetween "1.2.3.4" "5.6.7.8" `shouldBe` 67372036

    it "random" $ do
      forAll (vectorOf 4 (choose (0, 255))) $ \x ->
        forAll (vectorOf 4 (choose (0, 255))) $ \y ->
          let from = asIP x
              to = asIP y
           in to32Bit' to <= to32Bit' from ==> collect (from, to) $ ipsBetween from to === solution from to

asIP :: [Int] -> String
asIP = intercalate "." . map show

solution :: String -> String -> Int
solution from to = to32Bit' to - to32Bit' from

to32Bit' :: String -> Int
to32Bit' ip = foldl (\acc x -> acc * 256 + x) 0 $ map read $ splitOn "." ip
