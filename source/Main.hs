module Main where

import System.IO (BufferMode (..), hSetBuffering, stdout)

import qualified Data.ByteString as B

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    putStrLn "Please enter a valid file path:"
    path <- getLine
    contents <- B.readFile path
    putStrLn "Number of bytes read:"
    print $ B.length contents

