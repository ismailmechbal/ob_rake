require "ob_rake/version"

module ObRake
  class DockerTasks
    include Rake::DSL if defined? Rake::DSL
    def rake_tasks
      desc "Print hello world"
      task :hello_word do
        puts "Hello world"
      end
      namespace "main" do
        desc 'build docker image'
        task :build do
          system "docker-compose build"
        end
        desc 'remove build artifacts'
        task :clean_build do
          system "rm -fr build"
          system "rm -fr dist/"
          system "rm -fr *.egg-info"
        end
      end
    end
  end
end

ObRake::DockerTasks.new.rake_tasks