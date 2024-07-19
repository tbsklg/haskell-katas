module Kyu5.Smallfuck where

import Data.List (elemIndex)
import Data.Maybe (fromJust)

type Code = String

type Tape = String

type Pos = Int

data Program = MkProgram
  { cmds :: ([Command], Pos),
    tape :: (Tape, Pos)
  }
  deriving (Show)

data Command
  = MOVE_RIGHT
  | MOVE_LEFT
  | FLIP
  | JUMP_START
  | JUMP_END
  deriving (Show, Eq)

interpreter :: String -> String -> String
interpreter code tape =
  let cmds = commands code
   in eval MkProgram {cmds = (cmds, 0), tape = (tape, 0)}

flipBit :: Int -> Tape -> Tape
flipBit i t =
  let (before, _ : after) = splitAt i t
      flipped = if t !! i == '0' then '1' else '0'
   in before ++ [flipped] ++ after

eval :: Program -> Tape
eval prog@MkProgram {cmds = (c, cp), tape = (t, tp)} =
  let endOfCmd = cp == length c
      outOfTape = tp < 0 || tp > length t - 1
   in if endOfCmd || outOfTape
        then t
        else eval (exec prog)

exec :: Program -> Program
exec prog@MkProgram {cmds = (c, cp), tape = (t, tp)} =
  let currentCommand = c !! cp
      currentTape = t !! tp
   in case currentCommand of
        MOVE_RIGHT -> prog {cmds = (c, cp + 1), tape = (t, tp + 1)}
        MOVE_LEFT -> prog {cmds = (c, cp + 1), tape = (t, tp - 1)}
        FLIP -> prog {cmds = (c, cp + 1), tape = (flipBit tp t, tp)}
        JUMP_START ->
          if currentTape == '0'
            then prog {cmds = (c, findEnd c cp)}
            else prog {cmds = (c, cp + 1)}
        JUMP_END ->
          if currentTape == '1'
            then prog {cmds = (c, findStart c cp)}
            else prog {cmds = (c, cp + 1)}

findEnd :: [Command] -> Pos -> Pos
findEnd cmds cp = find' (cp + 1) 0
  where
    find' cp d
      | cmds !! cp == JUMP_END && d == 0 = cp
      | cmds !! cp == JUMP_END = find' (cp + 1) (d - 1)
      | cmds !! cp == JUMP_START = find' (cp + 1) (d + 1)
      | otherwise = find' (cp + 1) d

findStart :: [Command] -> Pos -> Pos
findStart cmds cp = find' (cp - 1) 0
  where
    find' cp d
      | cmds !! cp == JUMP_START && d == 0 = cp
      | cmds !! cp == JUMP_START = find' (cp - 1) (d + 1)
      | cmds !! cp == JUMP_END = find' (cp - 1) (d - 1)
      | otherwise = find' (cp - 1) d

commands :: String -> [Command]
commands [] = []
commands ('*' : xs) = FLIP : commands xs
commands ('<' : xs) = MOVE_LEFT : commands xs
commands ('>' : xs) = MOVE_RIGHT : commands xs
commands ('[' : xs) = JUMP_START : commands xs
commands (']' : xs) = JUMP_END : commands xs
commands (_ : xs) = commands xs
