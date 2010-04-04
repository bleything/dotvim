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
  puts "Hi! All this Rakefile can do right now is update the bundles:"
  puts # blank line
  puts "  $ rake update:bundles"
end

namespace :update do

  BUNDLES = {
    # plugins
    :bufexplorer   => "http://www.vim.org/scripts/download_script.php?src_id=12363",
    :nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
    :nerdtree      => "git://github.com/scrooloose/nerdtree.git",
    :tabular       => "git://github.com/godlygeek/tabular",

    # syntax definitions
    :syntax_cucumber => "git://github.com/tpope/vim-cucumber.git",
    :syntax_markdown => "git://github.com/ujihisa/vim-markdown.git",
    :syntax_rdoc     => "git://github.com/hallison/vim-rdoc.git",
    :syntax_textile  => "git://github.com/timcharper/textile.vim.git",
    :syntax_twiki    => "http://www.vim.org/scripts/download_script.php?src_id=6460",
  }

  desc "update any bundles defined in the Rakefile"
  task :bundles do

    bundle_home = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
    mkdir_p bundle_home

    BUNDLES.sort_by {|k,v| k.to_s }.each do |bundle, location|
      target_path = bundle_home + bundle.to_s

      puts "*" * 72
      puts "*** Instaling #{bundle} to #{target_path} from #{location}"
      puts # blank line

      rm_rf target_path

      case location.match( /^(.*?):/ )[1]
      when 'git'
        sh "git clone #{location} #{target_path} > /dev/null"
        rm_rf target_path + '.git'
      when 'http'
        mkdir_p target_path
        sh "cd #{target_path} && curl -s '#{location}' | tar zx -"
      end

      puts # blank line
    end
  end # task :bundles

end # namespace :update

