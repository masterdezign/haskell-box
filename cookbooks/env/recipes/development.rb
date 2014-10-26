%w(vim git zsh exuberant-ctags curl ack-grep).each do |name|
  package(name)
end

# Glasgow Haskell Compiler
%w(libgmp-dev freeglut3 freeglut3-dev ghc).each do |name|
  package(name)
end
# The next one is done in the postinstall.sh
# package("haskell-platform")

conf = { :user => { :name => 'vagrant',
                    :home =>  '/home/vagrant/' } }

setup_vim_cmds = [ "mkdir -p src/vim",
                   "git clone https://github.com/masterdezign/vim.git src/vim",
                   "ln -s src/vim/.vimrc .vimrc",
                   "ln -s src/vim/.vim .vim",
                   "git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle",
                   "rm -rf .vim/bundle/snipmate.vim/snippets" ]

setup_vim_cmds.each do |cmd|
  execute "setup_vim" do
    user conf[:user][:name]
    cwd conf[:user][:home]
    command(cmd)
  end
end
