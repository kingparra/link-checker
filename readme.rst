A website link checker
**********************
Your task is to write a link checking package
in Haskell which does the following:

* Given a website URL, fetch that HTML page
  and find all the links.
* Report any link which is broken (for
  example, returns 404 Not Found).
* Follow any internal links, and repeat this
  process with all the pages you can reach on
  this domain.

You should provide a command-line tool which
can be used to check a website, using your
package. For example, a typical session might
look like this::

  bash5.0$ linkcheck https://example.com

  37 links scanned, 2 broken links found:

  1. Source page: https://example.com/about
     Target: https://bogussite.com (status 404)

  2. Source page: https://example.com/privacy
     Target: https://example.com/doesntexist
     (status 404)
