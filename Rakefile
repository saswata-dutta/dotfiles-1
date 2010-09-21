DOTFILES = %w( gemrc gitconfig irbrc zshrc )

desc "Install dotfiles"
task :install do
  DOTFILES.each { |dotfile| `cp #{dotfile} ~/.#{dotfile}` }
end

