{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Data.Text.Lazy     as T
import           System.Environment
import           Web.Scotty

main :: IO ()
main = do
  env <- lookupEnv "THING"
  scotty 3000 $ do
    get "/" (text (T.pack (maybe "couldn't load THING" id env)))

