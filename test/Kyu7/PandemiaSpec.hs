module Kyu7.PandemiaSpec (spec) where

import Codewars
import Kyu7.Pandemia (infected)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    infected "01000000X000X011X0X" `shouldBeApprox` 73.33333333
    infected "01X000X010X011XX" `shouldBeApprox` 72.72727272
    infected "XXXXX" `shouldBeApprox` 0
    infected "0000000010" `shouldBeApprox` 100
    infected "X00X000000X10X0100" `shouldBeApprox` 42.857142857
