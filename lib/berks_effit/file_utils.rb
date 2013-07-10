require "etc"

module BerksEffit
  class FileUtils
    class << self
      def nuke_cookbook_directory

      end

      def cookbook_directory_exist?
        File.directory?(File.join(default_home, ".berkshelf", "cookbooks"))
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
