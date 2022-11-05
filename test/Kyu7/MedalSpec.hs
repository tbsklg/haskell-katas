module Kyu7.MedalSpec where

import Kyu7.Medal
import Test.Hspec
import Test.QuickCheck

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "awards the medal" $ do
    evilCodeMedal "00:30:00" "00:15:00" "00:45:00" "01:15:00" `shouldBe` Just "Silver"
    evilCodeMedal "01:15:00" "00:15:00" "00:45:00" "01:15:00" `shouldBe` Nothing
    evilCodeMedal "00:00:01" "00:00:10" "00:01:40" "01:00:00" `shouldBe` Just "Gold"
    evilCodeMedal "00:10:01" "00:00:10" "00:01:40" "01:00:00" `shouldBe` Just "Bronze"
    evilCodeMedal "00:00:01" "00:00:02" "00:00:03" "00:00:04" `shouldBe` Just "Gold"
    evilCodeMedal "90:00:01" "60:00:02" "70:00:03" "80:00:04" `shouldBe` Nothing
    evilCodeMedal "03:15:00" "03:15:00" "03:15:01" "03:15:02" `shouldBe` Just "Silver"
    evilCodeMedal "99:59:58" "99:59:57" "99:59:58" "99:59:59" `shouldBe` Just "Bronze"
    evilCodeMedal "14:49:03" "77:39:08" "92:11:36" "94:07:41" `shouldBe` Just "Gold"
    evilCodeMedal "61:01:40" "64:19:53" "79:30:02" "95:24:48" `shouldBe` Just "Gold"

main = hspec spec
