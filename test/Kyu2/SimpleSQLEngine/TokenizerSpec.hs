module Kyu2.SimpleSQLEngine.TokenizerSpec where

import Kyu2.SimpleSQLEngine.Tokenizer (Token (..), Type (..), tokenize)
import Test.Hspec

spec :: Spec
spec = do
  describe "tokenize" $ do
    it "should tokenize `SELECT` clause" $ do
      tokenize "select" `shouldBe` [(Token {sqlType = SELECT, value = "select"})]
      tokenize "SeLeCt" `shouldBe` [(Token {sqlType = SELECT, value = "select"})]

    it "should tokenize `SELECT` and one `IDENTIFIER`" $ do
      tokenize "  select  table-name.column-name"
        `shouldBe` [ (Token {sqlType = SELECT, value = "select"}),
                     (Token {sqlType = IDENTIFIER, value = "table-name.column-name"})
                   ]

    it "should tokenize `SELECT` and multiple `IDENTIFIERS`" $ do
      tokenize "  select  table1.column1, table2.column2"
        `shouldBe` [ (Token {sqlType = SELECT, value = "select"}),
                     (Token {sqlType = IDENTIFIER, value = "table1.column1"}),
                     (Token {sqlType = IDENTIFIER, value = "table2.column2"})
                   ]

    it "should tokenize only `SELECT`" $ do
      tokenize "   select \n  select               SELECT"
        `shouldBe` [ (Token {sqlType = SELECT, value = "select"}),
                     (Token {sqlType = SELECT, value = "select"}),
                     (Token {sqlType = SELECT, value = "select"})
                   ]

    it "should skip whitespaces" $ do
      tokenize "   select    " `shouldBe` [(Token {sqlType = SELECT, value = "select"})]

    it "should skip new lines" $ do
      tokenize "  \nselect \n  " `shouldBe` [(Token {sqlType = SELECT, value = "select"})]

    it "should tokenize only `IDENTIFIERS`" $ do
      tokenize "   table1.column1, table2.column1, table3.column1"
        `shouldBe` [ (Token {sqlType = IDENTIFIER, value = "table1.column1"}),
                     (Token {sqlType = IDENTIFIER, value = "table2.column1"}),
                     (Token {sqlType = IDENTIFIER, value = "table3.column1"})
                   ]

      tokenize "   1 22 "
        `shouldBe` [ (Token {sqlType = IDENTIFIER, value = "1"}),
                     (Token {sqlType = IDENTIFIER, value = "22"})
                   ]

    it "should tokenize `FROM`" $ do
      tokenize "FroM"
        `shouldBe` [ (Token {sqlType = FROM, value = "from"})
                   ]

    it "should tokenize `FROM` with `IDENTIFIERS`" $ do
      tokenize "FroM  table  "
        `shouldBe` [ (Token {sqlType = FROM, value = "from"}),
                     (Token {sqlType = IDENTIFIER, value = "table"})
                   ]

    it "should tokenize `JOIN`" $ do
      tokenize " JoIn    "
        `shouldBe` [ (Token {sqlType = JOIN, value = "join"})
                   ]
      tokenize " JoIn   on "
        `shouldBe` [ (Token {sqlType = JOIN, value = "join"}),
                     (Token {sqlType = ON, value = "ob"})
                   ]

    it "should tokenize `WHERE`" $ do
      tokenize " where    "
        `shouldBe` [ (Token {sqlType = WHERE, value = "where"})
                   ]

    it "should tokenize `COMPARISON`" $ do
      tokenize " <= "
        `shouldBe` [ (Token {sqlType = COMPARISON, value = "<="})
                   ]
      tokenize " =  >  <  <=  >=  <>       "
        `shouldBe` [ (Token {sqlType = COMPARISON, value = "="}),
                     (Token {sqlType = COMPARISON, value = ">"}),
                     (Token {sqlType = COMPARISON, value = "<"}),
                     (Token {sqlType = COMPARISON, value = "<="}),
                     (Token {sqlType = COMPARISON, value = ">="}),
                     (Token {sqlType = COMPARISON, value = "<>"})
                   ]
