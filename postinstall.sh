# Install the Haskell platform

cd /tmp && wget http://www.haskell.org/platform/download/2014.2.0.0/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz

cd / && sudo tar xvf /tmp/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz && sudo /usr/local/haskell/ghc-7.8.3-x86_64/bin/activate-hs && rm /tmp/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz


# Install the frequently used libs

# Fixes
# Fix the "can't load .so" error for happstack-server, web-routes-happstack, and streaming-commons (dep. of monad-logger)
sudo ln -s /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libz.so
# The curl C library required by curl
sudo apt-get install libcurl4-openssl-dev

sudo su vagrant
cabal update

cabal install --force-reinstalls aeson boomerang monad-logger utf8-string web-routes-boomerang 
cabal install --force-reinstalls acid-state bktrees curl edit-distance filemanip happstack-server hslogger safecopy web-routes-happstack 

# Finalize the installation

echo Welcome! > welcome.txt
echo Please run the next command manually to setup vim  >> welcome.txt
echo '  $ vim +BundleInstall +qall' >> welcome.txt
echo '' >> welcome.txt
echo 'Also optionally, run "chsh" to select "which zsh"' >> welcome.txt
echo 'curl -L http://install.ohmyz.sh | sh' >> welcome.txt


