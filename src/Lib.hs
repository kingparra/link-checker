{-# LANGUAGE OverloadedStrings #-}
module Lib where

-- todo toady
--
-- * Read the wikipedia page on HTTP
-- DONE * Retrieve a list of anchors with scalpel
-- * Complete the "Ask" exercise in HPFP.


-- todo
--
-- DONE * extract all of the <a></a> elements from our html.
--
-- DONE * extract the urls from those elements.
--
-- * turn relative links into full urls.
--
-- * get the response code for each url.
--
-- * return each url that doesn't respond with a status code in the range 200..299.


-- What information should the final output have?
--
-- * xpath/css selector to get the element
-- * the line number in html file where the
--   url occurs
-- * the stats code we received as a result of
--   requesting that url.
