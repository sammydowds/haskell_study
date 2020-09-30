{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

import Control.Applicative ((<|>))
import Snap.Core(ifTop, writeText, route)
import Snap.Http.Server (quickHttpServe)

someFunc :: IO ()
someFunc = quickHttpServe $ 
    ifTop (writeText "Hello World") 
    <|> writeText "Bad Path"