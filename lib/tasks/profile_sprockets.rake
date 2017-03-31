desc 'Profile assets compilation for each type'
task :profile_sprockets do
  Rake::Task['assets:precompile'].invoke
  require 'pp'
  pp SprocketsProfiler.result
end
