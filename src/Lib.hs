{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

import Snap.Core(ifTop, writeText)
import Snap.Http.Server (quickHttpServe)

someFunc :: IO ()
someFunc = quickHttpServe $ ifTop(writeText "Hello World")
