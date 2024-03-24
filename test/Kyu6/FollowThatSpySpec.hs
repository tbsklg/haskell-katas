module Kyu6.FollowThatSpySpec (spec) where

import Kyu6.FollowThatSpy (findRoutes)
import Test.Hspec
import Control.Monad (forM_)

fixedTests :: [(String, [([(String,String)], String)])]
fixedTests
  = [ ("Basic tests", [
            ([("one","two")], "one, two"),
            ([("one","two"), ("two","three")], "one, two, three"),
            ([("two","three"), ("one","two")], "one, two, three")]),
      ("Places around the world", [
            ([("MNL","TAG"), ("CEB","TAC"), ("TAG","CEB"), ("TAC","BOR")], "MNL, TAG, CEB, TAC, BOR"),
            ([("ITA","GER"), ("GER","BEL"), ("BEL","CAN")], "ITA, GER, BEL, CAN"),
            ([("Chicago","Winnipeg"), ("Halifax","Montreal"), ("Montreal","Toronto"), ("Toronto","Chicago"), ("Winnipeg","Seattle")], "Halifax, Montreal, Toronto, Chicago, Winnipeg, Seattle"),
            ([("Agra","Tokyo"), ("Seoul","Ljubljana"), ("Ljubljana","Wroclaw"), ("Wroclaw","Nashville"), ("Nashville","Amsterdam"), ("Amsterdam","Hull"), ("Hull","Vancouver"), ("Vancouver","Agra"), ("Tokyo","Manila")], "Seoul, Ljubljana, Wroclaw, Nashville, Amsterdam, Hull, Vancouver, Agra, Tokyo, Manila"),
            ([("Calgary","Fargo"), ("Spokane","Toronto"), ("Winnipeg","Montreal"), ("Toronto","Calgary"), ("Fargo","Winnipeg")], "Spokane, Toronto, Calgary, Fargo, Winnipeg, Montreal"),
            ([("BRA","KSA"), ("USA","BRA"), ("JPN","PHL"), ("KSA","UAE"), ("UAE","JPN")], "USA, BRA, KSA, UAE, JPN, PHL"),
            ([("San Policarpo","Oras"), ("Balangiga","Lawaan"), ("Borongan","Maydolong"), ("Jipapad","Maslog"), ("Balangkayan","Llorente"), ("Mercedes","Guiuan"), ("Taft","Sulat"), ("Sulat","San Julian"), ("Arteche","San Policarpo"), ("Oras","Dolores"), ("Dolores","Can-avid"), ("Can-avid","Taft"), ("San Julian","Borongan"), ("Maydolong","Balangkayan"), ("Llorente","Hernani"), ("Hernani","General MacArthur"), ("General MacArthur","Giporlos"), ("Giporlos","Balangiga"), ("Lawaan","Salcedo"), ("Salcedo","Mercedes"), ("Maslog","Arteche")],
             "Jipapad, Maslog, Arteche, San Policarpo, Oras, Dolores, Can-avid, Taft, Sulat, San Julian, Borongan, Maydolong, Balangkayan, Llorente, Hernani, General MacArthur, Giporlos, Balangiga, Lawaan, Salcedo, Mercedes, Guiuan")
        ]) ]

spec :: Spec
spec = do
  describe "Fixed tests" $ do
    forM_ fixedTests $ \(name, tests) -> do
      it name $ do
        forM_ tests $ \(inp, expected) -> do
          findRoutes inp `shouldBe` expected
