# set lets
$worker  = 2
$timeout = 30
RAILS_ROOT = File.expand_path('../../', __FILE__)
ENV['BUNDLE_GEMFILE'] = RAILS_ROOT + "/Gemfile"
$listen  = "/var/run/unicorn.sock" 
$pid     = "/var/run/unicorn.pid"
$std_log = "/var/run/unicorn.log"
# set config
worker_processes  $worker
working_directory RAILS_ROOT
stderr_path $std_log
stdout_path $std_log
timeout $timeout
listen  $listen
pid $pid
# loading booster
preload_app true
# before starting processes
before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      Process.kill "QUIT", File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end
# after finishing processes
after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
