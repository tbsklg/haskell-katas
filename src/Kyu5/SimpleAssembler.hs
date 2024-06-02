module Kyu5.SimpleAssembler (simpleAssembler) where
import qualified Data.Map.Strict as M

type Registers = M.Map String Int

type Index = String
data Value = Index | NumVal Int

data Expr = Value
          | Mov Value Value
          | Inc Index 
          | Dec Index
          | Jnz Value Value

simpleAssembler :: [String] -> Registers
simpleAssembler = undefined

eval :: Expr -> Registers -> Registers
eval (Dec i) env = decrement i env
eval (Inc i) env = increment i env
eval (Jnz i (NumVal x)) env = undefined
eval (Jnz (NumVal x) i) env = undefined
eval (Mov i (NumVal x)) env = copy i x env
eval (Mov (NumVal x) i) env = undefined

decrement :: Index -> Registers -> Registers
decrement i env = do
  let val = M.findWithDefault 0 i env
  M.insert i (val - 1) env

increment :: Index -> Registers -> Registers
increment i env = do
  let val = M.findWithDefault 0 i env
  M.insert i (val + 1) env

copy :: Value -> Int -> Registers -> Registers
copy (Index i) x env = M.insert i x env
copy (NumVal x) x env = undefined

