namespace :build do
  desc "Run all scenarios in a chrome browser"
  task :chrome do
    IO.popen("cucumber BROWSER=chrome" , 'r+') do |pipe|
      puts pipe.read
      pipe.close_write
    end
  end

  desc "Run all scenarios in a firefox browser"
  task :firefox do
    IO.popen("cucumber BROWSER=firefox", 'r+') do |pipe|
      puts pipe.read
      pipe.close_write
    end
  end

  desc "Run all scenarios in a safari browser"
  task :safari do
    IO.popen("cucumber BROWSER=safari", 'r+') do |pipe|
      puts pipe.read
      pipe.close_write
    end
  end

  desc "Launch all browser builds simultaneously"
  task :all do
    threads = []
    %w{build:chrome build:firefox build:safari}.each do |build|
      threads << Thread.new(build) do |thread|
        Rake::Task[thread].execute
      end
    end
    threads.each { |thread| thread.join }
  end
end