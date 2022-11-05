module Kyu7.Attribute where

data FileType = File | Directory | Symlink | Character | Block | Door | Socket | Pipe deriving (Show, Eq)

linuxType :: String -> FileType
linuxType ('-' : xs) = File
linuxType ('l' : xs) = Symlink
linuxType ('c' : xs) = Character
linuxType ('b' : xs) = Block
linuxType ('D' : xs) = Door
linuxType ('d' : xs) = Directory
linuxType ('s' : xs) = Socket
linuxType ('p' : xs) = Pipe
linuxType _ = error "Unknown FileType"
