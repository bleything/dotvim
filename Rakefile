########################################################################
###
### Ben Bleything's Vim Setup
### Based on the work of many others. See README.rdoc for credits.
###
### Git Hubs: http://github.com/bleything/dotvim
### Internet Electronic Mail: ben@bleything.net
###
########################################################################

require 'pathname'

task :default do
  puts "run `rake install_plugins` to install plugins"
end

desc "install plugins into ~/.vim/bundle"
task :install_plugins do
  bundle_path = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
  mkdir_p bundle_path

  PLUGINS.each do |plugin, repo|
    plugin_path = bundle_path + plugin.to_s

    puts "*" * 72
    puts "*** Instaling #{plugin} to #{plugin_path} from #{repo}"
    puts # blank line

    rm_rf plugin_path
    sh "git clone #{repo} #{plugin_path} > /dev/null"
    puts # blank line
  end
end

PLUGINS = {
  :nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
  :nerdtree      => "git://github.com/scrooloose/nerdtree.git"
}
