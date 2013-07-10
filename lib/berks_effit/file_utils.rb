require "etc"
require "fileutils"

module BerksEffit
  class FileUtils
    class << self
      def nuke_cookbook_directory
        if cookbook_directory_exist?
          FileUtils.rm_rf(cookbook_directory)
        else
          puts "You have already effit!"
        end
      end

      def cookbook_directory
        File.join(default_home, ".berkshelf", "cookbooks")
      end

      def cookbook_directory_exist?
        File.directory?(cookbook_directory)
      end


      def user_logged_in
        Etc.getlogin  
      end

      def default_home
        File.expand_path(ENV["HOME"] || Etc.getpwnam(user_logged_in).dir)
      end
    end
  end
end
