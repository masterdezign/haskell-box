%w(libgmp-dev freeglut3 freeglut3-dev libcurl4-openssl-dev).each do |name|
  package(name)
end

%w(curl curl-config git libncurses5-dev libblas-dev liblapack-dev libgsl0-dev neovim htop zsh stack exuberant-ctags ack-grep).each do |name|
  package(name)
end

%w(ipython python-numpy python-scipy python-matplotlib).each do |name|
  package(name)
end

conf = { :user => { :name => 'vagrant',
                    :home =>  '/home/vagrant/' } }

# Setup the environment
setup_cmds = [ "bash <(curl -sL https://git.io/haskell-vim-now)",
               "stack install cabal-install",
               'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"' ]

setup_cmds.each do |cmd|
  execute "setup_cmds" do
    user conf[:user][:name]
    cwd conf[:user][:home]
    command(cmd)
  end
end
