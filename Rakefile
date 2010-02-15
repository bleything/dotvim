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
DOTVIM = Pathname.new( ENV['HOME'] ) + '.vim'

task :default do
  puts "run `rake install:plugins` to install plugins"
end

namespace :install do

  desc "install plugins into ~/.vim/bundle"
  task :plugins do
    bundle_path = DOTVIM + 'bundle'
    mkdir_p bundle_path

    existing_ignores = File.read( DOTVIM + '.gitignore' ).
      split( /\n/ ).
      reject {|ignore| ignore =~ %r{bundle/}}

    gitignore = File.open( DOTVIM + '.gitignore', 'w' )
    existing_ignores.each {|i| gitignore.puts i }

    PLUGINS.sort_by {|k,v| k.to_s }.each do |plugin, repo|
      plugin_path = bundle_path + plugin.to_s

      puts "*" * 72
      puts "*** Instaling #{plugin} to #{plugin_path} from #{repo}"
      puts # blank line

      rm_rf plugin_path
      sh "git clone #{repo} #{plugin_path} > /dev/null"
      gitignore.puts plugin_path.relative_path_from( DOTVIM )

      puts # blank line
    end
  end # task :plugins

end # namespace :install

PLUGINS = {
  :nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
  :nerdtree      => "git://github.com/scrooloose/nerdtree.git"
}
