# Fixes
# Fix the "can't load .so" error for happstack-server, web-routes-happstack, and streaming-commons (dep. of monad-logger)
sudo ln -s /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libz.so

# sudo su vagrant
# cabal update

# stack install --force-reinstalls aeson boomerang monad-logger utf8-string web-routes-boomerang 
# stack install --force-reinstalls acid-state bktrees curl edit-distance filemanip happstack-server hslogger safecopy web-routes-happstack 

# Finalize the installation

echo Welcome! > welcome.txt
echo 'Optionally, run "chsh" to select "which zsh"' >> welcome.txt
