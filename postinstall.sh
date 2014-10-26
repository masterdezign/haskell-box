# Install the Haskell platform

cd /tmp && wget http://www.haskell.org/platform/download/2014.2.0.0/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz
cd / && sudo tar xvf /tmp/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz && sudo /usr/local/haskell/ghc-7.8.3-x86_64/bin/activate-hs && rm /tmp/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz

# Install the frequently used libs
cabal update
cabal install aeson boomerang monad-logger utf8-string web-routes-boomerang 
cabal install acid-state bktrees curl edit-distance filemanip happstack-server hslogger safecopy web-routes-happstack 
