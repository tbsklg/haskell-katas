module Kyu5.SimpleAssembler (simpleAssembler) where

import Control.Monad.State
  ( MonadState (get, put),
    State,
    execState,
    gets,
  )
import Data.Char (isAlpha)
import qualified Data.Map.Strict as M

type Registers = M.Map String Int

type Index = String

type Program = ([Expr], [Expr])

data Value = Index String | NumVal Int deriving (Show)

data ProgramState = ProgramState
  { registers :: Registers,
    step :: Int
  }
  deriving (Show)

data Expr
  = Value
  | Mov Value Value
  | Inc Value
  | Dec Value
  | Jnz Value Value
  deriving (Show)

simpleAssembler :: [String] -> Registers
simpleAssembler xs = registers $ execState (eval exprs) initialState
  where
    exprs = map (toExpr . words) xs

initialState :: ProgramState
initialState = ProgramState M.empty 0

toExpr :: [String] -> Expr
toExpr ["mov", x, y] = Mov (toVal x) (toVal y)
toExpr ["inc", x] = Inc (toVal x)
toExpr ["dec", x] = Dec (toVal x)
toExpr ["jnz", x, y] = Jnz (toVal x) (toVal y)
toExpr _ = error "Invalid expression"

toVal :: String -> Value
toVal x = if all isAlpha x then Index x else NumVal (read x :: Int)

eval :: [Expr] -> State ProgramState ProgramState
eval exprs = do
  program <- get
  if step program >= length exprs || step program < 0
    then return program
    else applyExpression (exprs !! step program) >> eval exprs

applyExpression :: Expr -> State ProgramState ()
applyExpression (Dec (Index i)) = dec i
applyExpression (Inc (Index i)) = inc i
applyExpression (Mov v1 v2) = cp v1 v2
applyExpression (Jnz v1 v2) = jnz v1 v2

cp :: Value -> Value -> State ProgramState ()
cp (Index i) (NumVal x) = do
  regs <- gets registers
  step <- gets step
  put $ ProgramState (M.insert i x regs) (step + 1)
cp (Index i) (Index j) = do
  regs <- gets registers
  step <- gets step
  let val = M.findWithDefault 0 j regs
  put $ ProgramState (M.insert i val regs) (step + 1)

dec :: Index -> State ProgramState ()
dec i = do
  regs <- gets registers
  step <- gets step
  let val = M.findWithDefault 0 i regs
  put $ ProgramState (M.insert i (val - 1) regs) (step + 1)

inc :: Index -> State ProgramState ()
inc i = do
  regs <- gets registers
  step <- gets step
  let val = M.findWithDefault 0 i regs
  put $ ProgramState (M.insert i (val + 1) regs) (step + 1)

jnz :: Value -> Value -> State ProgramState ()
jnz (Index i) (NumVal v2) = do
  regs <- gets registers
  step <- gets step
  let v1 = M.findWithDefault 0 i regs
  if v1 == 0
    then put $ ProgramState regs (step + 1)
    else put $ ProgramState regs (step + v2)
jnz (Index i) (Index j) = do
  regs <- gets registers
  step <- gets step
  let v1 = M.findWithDefault 0 i regs
      v2 = M.findWithDefault 0 j regs
  if v1 == 0
    then put $ ProgramState regs (step + 1)
    else put $ ProgramState regs (step + v2)
jnz (NumVal v1) (NumVal v2) = do
  regs <- gets registers
  step <- gets step
  if v1 == 0
    then put $ ProgramState regs (step + 1)
    else put $ ProgramState regs (step + v2)
