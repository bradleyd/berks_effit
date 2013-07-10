require "etc"

module BerksEffit
  class FileUtils
    class << self
      def nuke_cookbook_directory
        result = if cookbook_directory_exist?
                   Dir.rmdir(cookbook_directory)
                   "you're bersk has been effed!"
                 else
                   "You have already effit!"
                 end
        result
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
