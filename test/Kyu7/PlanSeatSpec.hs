module Kyu7.PlanSeatSpec (spec) where

import Kyu7.PlanSeat (planeSeat)
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    planeSeat "2B" `shouldBe` "Front-Left"
    planeSeat "20B" `shouldBe` "Front-Left"
    planeSeat "58I" `shouldBe` "No Seat!!"
    planeSeat "60D" `shouldBe` "Back-Middle"
    planeSeat "17K" `shouldBe` "Front-Right"
