module Lib where
import Network.HTTP

-- fetch url = do
--   rsp  <- Network.HTTP.simpleHTTP (getRequest url)
--   code <- getResponseCode rsp
--   let (x,y,z) = code
--   -- code :: ResponseCode
--   -- type ResponseCode = (Int, Int, Int)
--   putStrLn $ concatMap show [x,y,z]

fetchHtml url = do
  response <- simpleHTTP (getRequest url)
  body     <- getResponseBody response
  return body
