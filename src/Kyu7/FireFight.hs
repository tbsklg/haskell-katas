module Kyu7.FireFight (fire_fight) where

import Data.Text (Text, pack, replace)

fire_fight :: Text -> Text
fire_fight = replace (pack "Fire") (pack "~~")
