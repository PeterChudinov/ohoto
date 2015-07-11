path = "/var/www/#{application}"
environment = ENV['RACK_ENV'] || ENV['RAILS_ENV'] || 'production'
workers = (ENV['UNICORN_WORKERS'] || (environment == 'production' ? 2 : 1 )).to_i

worker_processes workers

# Load rails+github.git into the master before forking workers
# for super-fast worker spawn times
preload_app true

# Restart any workers that haven't responded in 120 seconds
timeout 120

# Listen on a Unix data socket
listen "/tmp/ohoto.sock", backlog: 2048

if environment != 'development'
  stderr_path "#{path}/shared/log/unicorn.stderr.log"
  stdout_path "#{path}/shared/log/unicorn.stdout.log"
end


##
# REE

# http://www.rubyenterpriseedition.com/faq.html#adapt_apps_for_cow
if GC.respond_to?(:copy_on_write_friendly=)
  GC.copy_on_write_friendly = true
end

before_exec do |server|
  ENV['BUNDLE_GEMFILE'] = "#{path}/current/Gemfile"
end

before_fork do |server, worker|
  ##
  # When sent a USR2, Unicorn will suffix its pidfile with .oldbin and
  # immediately start loading up a new version of itself (loaded with a new
  # version of our app). When this new Unicorn is completely loaded
  # it will begin spawning workers. The first worker spawned will check to
  # see if an .oldbin pidfile exists. If so, this means we've just booted up
  # a new Unicorn and need to tell the old one that it can now die. To do so
  # we send it a QUIT.
  #
  # Using this method we get 0 downtime deploys.

  old_pid = "#{path}/current/tmp/pids/unicorn.pid.oldbin"

  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
      # someone else did our job for us
    end
  end
end


after_fork do |server, worker|
  ##
  # Unicorn master loads the app then forks off workers - because of the way
  # Unix forking works, we need to make sure we aren't using any of the parent's
  # sockets, e.g. db connection

  ActiveRecord::Base.establish_connection

  # CHIMNEY.client.connect_to_server
  # Redis and Memcached would go here but their connections are established
  # on demand, so the master never opens a socket

  # http://vccv.posterous.com/forking-processes-in-ruby-and-randomness - we've hit this issue with coupon generation
  srand

  ##
  # Unicorn master is started as root, which is fine, but let's
  # drop the workers to git:git
end