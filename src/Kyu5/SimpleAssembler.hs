module Kyu5.SimpleAssembler (simpleAssembler) where

import Data.Char (isAlpha)
import qualified Data.Map.Strict as M

type Registers = M.Map String Int

type Index = String

type Program = ([Expr], [Expr])

data Value = Index String | NumVal Int deriving (Show)

data Expr
  = Value
  | Mov Value Value
  | Inc Value
  | Dec Value
  | Jnz Value Value
  deriving (Show)

simpleAssembler :: [String] -> Registers
simpleAssembler xs =
  let prog = (expr, [])
      expr = map (toExpr . words) xs
   in eval prog M.empty

toExpr :: [String] -> Expr
toExpr ["mov", x, y] = Mov (toVal x) (toVal y)
toExpr ["inc", x] = Inc (toVal x)
toExpr ["dec", x] = Dec (toVal x)
toExpr ["jnz", x, y] = Jnz (toVal x) (toVal y)
toExpr _ = error "Invalid expression"

toVal :: String -> Value
toVal x = if all isAlpha x then Index x else NumVal (read x :: Int)

eval :: Program -> Registers -> Registers
eval ([], _) env = env
eval (e@(Dec (Index i)) : ps, ys) env = eval (ps, e : ys) (dec i env)
eval (e@(Inc (Index i)) : ps, ys) env = eval (ps, e : ys) (inc i env)
eval (e@(Mov v1 v2) : ps, ys) env = eval (ps, e : ys) (cp v1 v2 env)
eval p@((Jnz v1 v2) : _, _) env = let prog = jnz v1 v2 p env in eval prog env

dec :: Index -> Registers -> Registers
dec i env =
  let val = M.findWithDefault 0 i env
   in M.insert i (val - 1) env

inc :: Index -> Registers -> Registers
inc i env =
  let val = M.findWithDefault 0 i env
   in M.insert i (val + 1) env

cp :: Value -> Value -> Registers -> Registers
cp (Index i) (NumVal x) env = M.insert i x env
cp (Index i) (Index j) env =
  let val = M.findWithDefault 0 j env
   in M.insert i val env

jnz :: Value -> Value -> Program -> Registers -> Program
jnz (Index i) (NumVal v2) p@(x : xs, ys) env =
  let v1 = M.findWithDefault 0 i env
   in if v1 == 0 then (xs, x : ys) else adjustProgram v2 p
jnz (Index i) (Index j) p@(x : xs, ys) env =
  let v1 = M.findWithDefault 0 i env
      v2 = M.findWithDefault 0 j env
   in if v1 == 0 then (xs, x : ys) else adjustProgram v2 p
jnz (NumVal v1) (NumVal v2) p@(x : xs, ys) env =
  if v1 == 0 then (xs, x : ys) else adjustProgram v2 p

adjustProgram :: Int -> Program -> Program
adjustProgram i (e@(x : xs), ys) =
  let prevExpr = (reverse . take (abs i) $ ys) ++ e
      skipExpr = drop (abs i) e
   in if i < 0
        then (prevExpr, drop (abs i) ys)
        else (skipExpr, take (abs i) (x : xs) ++ ys)
