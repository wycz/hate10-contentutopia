namespace :server do
  def pid
    File.read(File.join(Rails.root, 'tmp', 'pids', 'server.pid')).to_i
  end

  desc 'Start WEBrick server in background'
  task :start do
    `rails s -b :: -d`
    Rake::Task['server:pid'].invoke
  end

  desc 'Stop WEBrick server running in background.'
  task :stop do
    begin
      Process.kill(:INT, pid)
    rescue Errno::ENOENT
    end
  end

  desc 'Restart WEBrick server running in background.'
  task restart: [:stop, :start]

  desc 'Print process ID of WEBrick server running in background'
  task :pid do
    p pid
  end
end
