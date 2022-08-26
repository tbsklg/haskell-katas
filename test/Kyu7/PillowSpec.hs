module Kyu7.PillowSpec where

import Test.Hspec
import Kyu7.Pillow

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    pillow ("EvH/KNikBiyxfeyK/miCMj", "I/HwjnHlFLlahMOKNadps") `shouldBe` False
    pillow ("\\DjQ\\[zv]SpG]Z/[Qm\\eLL", "amwZArsaGRmibriXBgTRZp") `shouldBe` False
    pillow ( "n", "B" ) `shouldBe` True
    pillow ("yF[CeAAiNihWEmKxJc/NRMVn", "rMeIa\\KAfbjuLiTnAQxNw[XB") `shouldBe` True
    pillow ("inECnBMAA/u", "ABAaIUOUx/M") `shouldBe` True

-- the following line is optional for 8.2
main = hspec spec