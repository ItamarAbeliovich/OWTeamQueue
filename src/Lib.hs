module Lib where

import Database.HDBC
import Database.HDBC.Sqlite3

data Role = Tank | Healer | Enforcer | Builder | Flanker
    deriving (Show, Read)

newtype Session = Session id [Role]

newtype User = User String String | User Int -- name pass | id

createSession :: User -> Role -> IO Session
