module Kyu7.SortTransformSpec where

import Test.Hspec
import Kyu7.SortTransform

import Test.HUnit (assertEqual)

myTest a exp = do
  print $ "Looking for: " ++ show exp
  assertEqual msg exp actual
  where 
    actual = sortTransform a
    msg = "Failed at: " ++ showArgs
    showArgs = show a
    
spec :: Spec
spec = do
  it "Fixed tests" $ do
    myTest [111, 112, 113, 114, 115, 113, 114, 110] "oprn-nors-sron-nors"
    myTest [51, 62, 73, 84, 95, 100, 99, 126] "3>c~-3>d~-~d>3-3>d~"
    myTest [66, 101, 55, 111, 113] "Beoq-7Boq-qoB7-7Boq"
    myTest [78, 117, 110, 99, 104, 117, 107, 115, 120, 121, 125] "Nuy}-Ncy}-}ycN-Ncy}"
    myTest [101, 48, 75, 105, 99, 107, 121, 122, 124] "e0z|-0Kz|-|zK0-0Kz|"
    myTest [80, 117, 115, 104, 65, 85, 112, 115, 66, 76, 62] "PuL>->Asu-usA>->Asu"
    myTest [91, 100, 111, 121, 51, 62, 81, 92, 63] "[d\\?-3>oy-yo>3-3>oy"
    myTest [78, 93, 92, 98, 108, 119, 116, 100, 85, 80] "N]UP-NPtw-wtPN-NPtw"
    myTest [111, 121, 122, 124, 125, 126, 117, 118, 119, 121, 122, 73] "oyzI-Io}~-~}oI-Io}~"
    myTest [82, 98, 72, 71, 71, 72, 62, 67, 68, 115, 117, 112, 122, 121, 93] "Rby]->Cyz-zyC>->Cyz"
    myTest [99, 98, 97, 96, 81, 82, 82] "cbRR-QRbc-cbRQ-QRbc"
    myTest [66, 99, 88, 122, 123, 110] "Bc{n-BXz{-{zXB-BXz{"
    myTest [66, 87, 98, 59, 57, 50, 51, 52] "BW34-23Wb-bW32-23Wb"

-- the following line is optional for 8.2
main = hspec spec
