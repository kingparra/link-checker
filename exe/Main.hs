{-# LANGUAGE OverloadedStrings #-}
import System.Environment
import Text.HTML.Scalpel


handleArgs :: [String] -> IO ()
handleArgs [url] = listUrlsForSite url
handleArgs _     = putStrLn "usage: list-all-images URL"


listUrlsForSite :: URL -> IO ()
listUrlsForSite url = do
  links <- scrapeURL url (attrs "href" "a")
  maybe printError printLinks links
  where
    printError = putStrLn "ERROR: Could not scrape the URL!"
    printLinks = mapM_ putStrLn


main :: IO ()
main = getArgs >>= handleArgs
