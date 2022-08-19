module Kyu7.PerniciousNumbersSpec where

import Test.Hspec
import Kyu7.PerniciousNumbers

import Test.HUnit (assertEqual)

myTest n exp = do
  assertEqual msg exp actual
  where 
    actual = pernicious n
    msg = "Failed at: " ++ showArgs
    showArgs = show n
    
spec :: Spec
spec = do
  it "Pernicous numbers" $ do
    myTest (4::Int)    (Right [3])
    myTest (5::Int)    (Right [3, 5])
    myTest (232::Int)  (Right [3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 40, 41, 42, 44, 47, 48, 49, 50, 52, 55, 56, 59, 61, 62, 65, 66, 67, 68, 69, 70, 72, 73, 74, 76, 79, 80, 81, 82, 84, 87, 88, 91, 93, 94, 96, 97, 98, 100, 103, 104, 107, 109, 110, 112, 115, 117, 118, 121, 122, 124, 127, 129, 130, 131, 132, 133, 134, 136, 137, 138, 140, 143, 144, 145, 146, 148, 151, 152, 155, 157, 158, 160, 161, 162, 164, 167, 168, 171, 173, 174, 176, 179, 181, 182, 185, 186, 188, 191, 192, 193, 194, 196, 199, 200, 203, 205, 206, 208, 211, 213, 214, 217, 218, 220, 223, 224, 227, 229, 230])
  it "Non pernicous numbers" $ do
    myTest (0::Int)     (Left "No pernicious numbers")
    myTest (1::Int)     (Left "No pernicious numbers")
    myTest (-54::Int)   (Left "No pernicious numbers")
  it("Floating point pernicious and non pernicious numbers") $ do
    myTest (6.99::Float)        (Right  [3, 5, 6])
    myTest (-6.99::Float)       (Left "No pernicious numbers")
    myTest (42.42424242::Float) (Right [3, 5, 6, 7, 9, 10, 11, 12, 13, 14, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 40, 41, 42])

-- the following line is optional for 8.2
main = hspec spec
