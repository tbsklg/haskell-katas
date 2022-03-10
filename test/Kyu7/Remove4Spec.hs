module Kyu7.Remove4Spec where

import Test.Hspec
import Kyu7.Remove4

i1 =  [1, 1, 2 ,3 ,1 ,2 ,3 ,4]
v1 = [1, 3]

i2 = [1, 1, 2 ,3 ,1 ,2 ,3 ,4, 4, 3 ,5, 6, 7, 2, 8]
v2  = [1, 3, 4, 2]

i3 = [8, 2, 7, 2, 3, 4, 6, 5, 4, 4, 1, 2 , 3]
v3  = [2, 4, 3]

i4 = [4, 4, 2 , 3]
v4  = [2, 2, 4, 3]

i5 = []
v5  = [2, 2, 4, 3]

-- `spec` of type `Spec` must exist
spec :: Spec
spec = do
  it "works on fixed cases" $ do
    remove i1 v1 `shouldBe`  [2, 2, 4]
    remove i2 v2 `shouldBe`  [5, 6 ,7 ,8]
    remove i3 v3 `shouldBe`  [8, 7, 6, 5, 1]
    remove i4 v4 `shouldBe`  []
    remove i5 v5 `shouldBe`  []

-- the following line is optional for 8.2
main = hspec spec
