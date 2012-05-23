task :update_configs do
  puts "Copying configs"
  %x[ cp vimrc ../.vimrc ]
  %x[ cp gvimrc ../.gvimrc ]
  %x[ cp gemrc ../.gemrc ]
  %x[ cp gitconfig ../.gitconfig ]
  %x[ cp zshrc ../.zshrc ]
  puts "Done"
end

task :install do
  puts "Installing Oh-My-ZSH"
  %x[ cd .. && git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh ]
  puts "Done"
  Rake::Task["update_configs"].execute
  puts 'Installed!'
end

