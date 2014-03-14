require "etc"
require "fileutils"

module BerksEffit
  class FileUtils
    class << self

      def nuke_it_all
        nuke_berksfile_lock
        nuke_cookbook_directory    
      end

      def nuke_berksfile_lock
        result = if berksfile_lock_exist?
                   ::FileUtils.rm("./Berksfile.lock")
                   "you're Berksfile.lock has been effed!"
                 else 
                   "failed to eff your berksfile lock :("
                 end
        $stdout.puts result
      end

      def nuke_cookbook_directory
        result = if cookbook_directory_exist?
                   ::FileUtils.remove_dir(cookbook_directory)
                   "you're berks has been effed!"
                 else
                   "You have already effed it!"
                 end
        $stdout.puts result
      end
     
      def cookbook_directory
        File.join(default_home, ".berkshelf", "cookbooks")
      end

      def cookbook_directory_exist?
        File.directory?(cookbook_directory)
      end

      def berksfile_lock_exist?
        File.exist?("./Berksfile.lock")
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
