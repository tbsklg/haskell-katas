module Kyu7.Office2Spec where

import Kyu7.Office2
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    outed [("tim", 0), ("jim", 2), ("randy", 0), ("sandy", 7), ("andy", 0), ("katie", 5), ("laura", 1), ("saajid", 2), ("alex", 3), ("john", 2), ("mr", 0)] "laura" `shouldBe` "Get Out Now!"
    outed [("tim", 1), ("jim", 3), ("randy", 9), ("sandy", 6), ("andy", 7), ("katie", 6), ("laura", 9), ("saajid", 9), ("alex", 9), ("john", 9), ("mr", 8)] "katie" `shouldBe` "Nice Work Champ!"
    outed [("tim", 2), ("jim", 4), ("randy", 0), ("sandy", 5), ("andy", 8), ("katie", 6), ("laura", 2), ("saajid", 2), ("alex", 3), ("john", 2), ("mr", 8)] "john" `shouldBe` "Get Out Now!"
    outed [("Mm|", 7), ("\179181'`%(\STX\168599", 1), ("\163165g", 2), ("8!Jck\430226\EOT", 1), ("", 7), ("cV\FS_\DEL}j", 9), ("", 5)] "" `shouldBe` "Nice Work Champ!"
    outed [("\457038\480578X[\264889",3),("6\1456\&7\19350\283093\1050399\521743",3),("\aM",9),("Pl\589292)",1),("",9)] "\457038\480578X[\264889" `shouldBe` "Nice Work Champ!"
    outed [("\107336,\991130!2y",3),("2\n\243541f\SI\NULkAj\EOT\DEL\SO",9),("\ENQ7&\NULrP\205076",3),("\NUL\592073\142357q",3),("\SI\1055512",1),("bL",7),("\544117",0),("vA0\996825\DC2)\RSD",7),("Vr>N\ETX\833399\953020\790465\283209\DEL",7),("\595982\EMoe~",5),("U\210559\181319h\834009w\b",8),("U+s",8)] "\SI\1055512" `shouldBe` "Nice Work Champ!"

-- the following line is optional for 8.2
main = hspec spec
