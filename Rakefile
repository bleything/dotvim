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
  puts "Hi! All this Rakefile can do right now is update the plugins:"
  puts # blank line
  puts "  $ rake update:plugins"
end

namespace :update do

  PLUGINS = {
    :nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
    :nerdtree      => "git://github.com/scrooloose/nerdtree.git",
    :fugitive      => "git://github.com/tpope/vim-fugitive.git",
    :rdoc_syntax   => "git://github.com/hallison/vim-rdoc.git",
  }

  desc "update any plugins defined in PLUGINS"
  task :plugins do

    bundle_path = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
    mkdir_p bundle_path

    PLUGINS.sort_by {|k,v| k.to_s }.each do |plugin, location|
      plugin_path = bundle_path + plugin.to_s

      puts "*" * 72
      puts "*** Instaling #{plugin} to #{plugin_path} from #{location}"
      puts # blank line

      rm_rf plugin_path

      case location.match( /^(.*?):/ )[1]
      when 'git'
        sh "git clone #{location} #{plugin_path} > /dev/null"
      when 'http'
        mkdir_p plugin_path
        sh "cd #{plugin_path} && curl -s '#{location}' | tar zx -"
      end

      puts # blank line
    end
  end # task :plugins

end # namespace :update

