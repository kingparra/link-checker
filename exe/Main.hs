module Main where
import Lib

main = do 
  body <- fetchHtml "http://tuxmachines.org"
  print body
