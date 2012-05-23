task :install do
  puts "------------------------------------"
  puts 'Installing Oh-My-ZSH'  
  puts "------------------------------------"
  puts 
  %x[ cd .. && git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh ]
  %x[ cd .. && ln -s .dotfiles/vimrc .vimrc ]
  %x[ cd .. && ln -s .dotfiles/gvimrc .gvimrc ]
  %x[ cd .. && ln -s .dotfiles/gemrc .gemrc ]
  %x[ cd .. && ln -s .dotfiles/gitconfig .gitcofig ]
  %x[ cd .. && ln -s .dotfiles/zshrc .zshrc ]
end

