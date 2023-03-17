module Kyu6.SudokuboardValidator (validateSudoku) where

import Data.List (transpose)
import Data.Set as S ( fromList )

type Sudoku = [[Int]]

validateSudoku :: Sudoku -> Bool
validateSudoku board = all isValid rows && all isValid columns && all isValid boxes
  where
    isValid row = S.fromList row == S.fromList [1 .. 9]
    rows = board
    columns = transpose board
    boxes = [[board !! (3 * i + k) !! (3 * j + l) | k <- [0 .. 2], l <- [0 .. 2]] | i <- [0 .. 2], j <- [0 .. 2]]
