module Kyu2.SimpleSQLEngine (sqlEngine) where

sqlEngine :: [(String,[[(String,String)]])] -> String -> [[(String,String)]]
sqlEngine database = execute where
  execute :: String -> [[(String,String)]]
  execute query = undefined
